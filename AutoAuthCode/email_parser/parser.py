from email import message_from_bytes
from email.header import decode_header, make_header
import re

"""
msg["From"]        # Sender's email
msg["To"]          # Recipient(s)
msg["Subject"]     # Email subject
msg["Date"]        # Date sent
msg["Cc"]          # Carbon copy
msg["Bcc"]         # Blind carbon copy (rarely present)

"""

def display_email_data(rawEmails):
    for rawEmail in rawEmails:
        currEmail = message_from_bytes(rawEmail)
        subject = make_header(decode_header(currEmail['subject']))
        data = currEmail['date']
        print(f"Subject: {subject}")
        print(f"Data: {data}")


def display_email_data_all_formats(rawEmails):
    for rawEmail in rawEmails:
        currEmail = message_from_bytes(rawEmail)
        subject = make_header(decode_header(currEmail['subject']))
        data = currEmail['date']
        print(f"Subject: {subject}")
        print(f"Data: {data}")
        if(currEmail.is_multipart()):
            for part in currEmail.walk():
                contentType = part.get_content_type()
                print(contentType)
                if contentType == "text/plain":
                    body = part.get_payload(decode=True).decode()
                    print(f"Body: {body}")
        else:
            contentType = currEmail.get_content_type()
            print(contentType)


# Regex patterns for email parsing
EMAIL_SUBJECT_AUTHCODE_REGEX = r'\b(verification|code|authentication|otp|2fa)\b'

def is_email_subject_valid(emailSubject: str):
    pattern = re.compile(EMAIL_SUBJECT_AUTHCODE_REGEX,re.IGNORECASE) # Creates regex with search strings and not case sensitive
    match = pattern.search(emailSubject)

    if match:
        return True
    else:
        return False

