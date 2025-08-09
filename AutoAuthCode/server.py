from flask import Flask, request, jsonify
from flask_cors import CORS
from main import get_otp_from_email

app = Flask(__name__)
CORS(app)  # This enables CORS for all routes by default


@app.route('/otp_event', methods=['POST'])

def otp_event():
    data = request.get_json()  # Parse JSON data sent from your extension
    url = data.get('url', 'No URL sent')
    print(f"Received OTP event from URL: {url}")

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

    # Here you can trigger your email fetch / parser or other logic
    # For now, just respond back with success

if __name__ == '__main__':
    app.run(debug=True, port=5000)
