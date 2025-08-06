console.log("Injected OTP success");

const otpButton = document.createElement("button");

//Style Button
otpButton.textContent = "OTP Sent";
otpButton.style.position = "fixed";
otpButton.style.bottom = "20px";
otpButton.style.right = "20px";
otpButton.style.zIndex = "9999";
otpButton.style.padding = "10px 16px";
otpButton.style.backgroundColor = "#007bff";
otpButton.style.color = "#fff";
otpButton.style.border = "none";
otpButton.style.borderRadius = "6px";
otpButton.style.cursor = "pointer";
otpButton.style.boxShadow = "0 2px 5px rgba(0, 0, 0, 0.2)";
otpButton.style.fontSize = "14px";

document.body.appendChild(otpButton);

// If OTP button clicked then send message to server to fetch code 
otpButton.addEventListener('click', ()=> {
    console.log("OTP was sent");
    chrome.runtime.sendMessage({
        type: "otp sent",
        url: window.location.href
    });
})

// Check if code found
chrome.runtime.onMessage.addListener((message, sender, sendResponce) => {
    if (message.type === "OTP Code Received") {
        console.log("Received Code", message.otpCode);
    }
})
