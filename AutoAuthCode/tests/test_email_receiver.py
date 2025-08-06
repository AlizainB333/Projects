import smtplib
from email.mime.text import MIMEText
import unittest
from email_parser.parser import check_for_auth_code



smtp_server = "smtp.gmail.com"
smtp_port = 587
sender_email = "azainbandukwala333@gmail.com"
receiver_email = "azainbandukwala333@gmail.com"  # same or different address
password = "yrmf jife tqns bvwk".replace(" ", "")


message = MIMEText("Your code is 123456")
message["Subject"] = "Test Auth Code"
message["From"] = sender_email
message["To"] = receiver_email

with smtplib.SMTP(smtp_server, smtp_port) as server:
    server.starttls()
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, message.as_string())

print("Test email sent!")

def send_custom_email(subjectMessage: str, bodyMessage: str):
    message = MIMEText(bodyMessage)
    message["Subject"] = subjectMessage
    message["From"] = sender_email
    message["To"] = receiver_email

    with smtplib.SMTP(smtp_server, smtp_port) as server:
        server.starttls()
        server.login(sender_email, password)
        server.sendmail(sender_email, receiver_email, message.as_string())


class TestEmail(unittest.TestCase):
    """Check if code is extracted correctly"""
    
    def test_extract_auth_code(self):
        texts = [
            "Your verification code is: 1245f ",
            "Your code 134556 ",
            "Code 12567 ",
            "auth code - 345679",
            "otp 345gf4",
            "otp        ------- 345gf4"
        ]

        expectedCodes = [
            "1245f",
            "134556",
            "12567",
            "345679",
            "345gf4",
            "345gf4"
        ]

        for text, expectedCode in zip(texts,expectedCodes):
            with self.subTest(text=text):
                flag,code = check_for_auth_code(text)
                self.assertTrue(flag,msg=f"Failed for test {text}")
                self.assertEqual(code,expectedCode, msg=f"Code mismatch for text {text}")
                print(f"Code for test {text} is {code}")
            





