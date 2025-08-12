from flask import Flask, request, jsonify
from flask_cors import CORS
from main import get_otp_from_email
from tests.test_email_receiver import send_test_otp_email
import time

app = Flask(__name__)
CORS(app)  # This enables CORS for all routes by default

# Route to Test Emails with Request OTP Button
@app.route('/otp_email',methods=['POST'])

def send_otp_email():
    print("Sending Email")

    send_test_otp_email()

    return jsonify({
        "status": "ok",
        "message": "Email Sent",
    })


@app.route('/otp_event', methods=['POST'])

def otp_event():
    data = request.get_json()  # Parse JSON data sent from your extension
    url = data.get('url', 'No URL sent')
    print(f"Received OTP event from URL: {url}")

    # For testing send email with rand otp code
    # send_test_otp_email()

    #Add Delay so email can send first (Test this method else try polling)
    # time.sleep(5)

    otpCode, otpFlag = get_otp_from_email(url)  

    if otpFlag: 
        print(f"OTP Code: {otpCode}")
    else:
        print("OTP Code not Found")

    return jsonify({
        "status": "ok", 
        "message": "OTP Code received",
        "otpCode": otpCode,
        "codeFound": otpFlag
    })


if __name__ == '__main__':
    app.run(debug=True, port=5000)
