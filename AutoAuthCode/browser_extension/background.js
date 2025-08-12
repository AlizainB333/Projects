/**
 * Checks for message from otp btn and will send message to 
 * server to parse and find code. Will error handle if code 
 * not found and if found send code back to content to paste
 */

browser.runtime.onMessage.addListener((message, sender, sendResponse) => {
  if (message.type === "otp sent") {
    console.log("OTP was sent out now fetch email")
    console.log("Current URL:", message.url);
    
    fetch('http://localhost:5000/otp_event', {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify({url: message.url})
    })
    .then(response => response.json())
    .then(data => {
      // Once the message is received send to content.js
      if (data.codeFound) {
        console.log("Code Found")
        chrome.tabs.sendMessage(sender.tab.id, {
          type: "OTP Code Received",
          otpCode: data.otpCode
        });
      } else {
        console.warn("OTP Code Not Found")
      }
      console.log("Response from Python:", data);
      sendResponse({status: "sent"});
    })
    .catch(error => {
      console.error("Error sending to Python:", error);
      sendResponse({status: "error"});
    });

    return true; // Keep sendResponse valid for async
  }
});


/**
 * Listener for Otp button toggler
 */
browser.commands.onCommand.addListener((command) => {
    if (command === "toggle-otp-button") {
        // Find the active tab
        browser.tabs.query({ active: true, currentWindow: true }).then((tabs) => {
            console.log("Sending command to Toggle Btn");
            // Send message to content script
            browser.tabs.sendMessage(tabs[0].id, { type: "toggle-otp-button" });
        });
    }
});