import smtplib
from email.mime.text import MIMEText

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
