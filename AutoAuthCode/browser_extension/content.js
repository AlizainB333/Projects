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


/**
 * Takes otp code and auto pastes it into browser input field
 * 
 * @param {string} otpCode - The Authentication Code to be posted 
 */
function postOtpCode(otpCode) {
    const inputField = document.querySelector('input[name="authCode"], input[type="text"], input[type="number"]');

    if (inputField) {
        inputField.value = otpCode;
        inputField.dispatchEvent(new Event('input', { bubbles: true }));
        inputField.dispatchEvent(new Event('change', { bubbles: true }));
        console.log("OTP Code succesfully Updated");
    }
    else {
        console.error("Input Field Not Found");
    }
}

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
        postOtpCode(message.otpCode);
        console.log("Received Code", message.otpCode);
    }
})
