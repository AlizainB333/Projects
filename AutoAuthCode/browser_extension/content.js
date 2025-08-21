console.log("Injected OTP success");
const otpButton = document.createElement("button");

//Style Button
otpButton.textContent = "Autofill Otp";     
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
otpButton.style.display = "none";

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

/**
 * Checks if otp button is clicked to send message to server 
 * to parse and find code 
 */

otpButton.addEventListener('click', ()=> {
    console.log("OTP was sent");
    otpButton.textContent = "Looking For Code ..."
    browser.runtime.sendMessage({
        type: "otp sent",
        url: window.location.href
    });
})

/**
 * Checks if Code is Found and will paste to current browser tab
 * Also checks for otp button toggle command 
 */

browser.runtime.onMessage.addListener((message, sender, sendResponse) => {
    if (message.type === "OTP Code Received") {
        console.log("Received Code", message.otpCode);
        otpButton.textContent = "Code Found";
        postOtpCode(message.otpCode);
        setTimeout(() => {
            otpButton.textContent = "AutoFill OTP";
        },5000);
    }
    if(message.type === "OTP Code Not Found") {
        otpButton.textContent = "Code Not Found";
                setTimeout(() => {
            otpButton.textContent = "AutoFill OTP";
        },5000);
    }
    // If the button key is pressed toggle button
    else if (message.type === "toggle-otp-button") {
        if (otpButton.style.display === "none") {
            console.log("Showing Otp Button");
            otpButton.style.display = "block";

        }
        else {
            console.log("Hiding Otp Button");
            otpButton.style.display = "none";
        }
    }
})
