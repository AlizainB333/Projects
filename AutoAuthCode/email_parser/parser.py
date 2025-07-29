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
    """
    Displays the Subject and Date of a list of raw email bytes

    Args:
        rawEmails (list of bytes): List of raw email bytes from IMAP fetch
    Returns:
        None   
    """
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


def decode_auth_rawEmails(rawEmails):
    for rawEmail in rawEmails:
        currEmail = message_from_bytes(rawEmail)
        subject = str(make_header(decode_header(currEmail['subject'])))
        fromPart = currEmail['from']
        # print(type(subject))
        
        isEmailAuth = is_email_subject_valid(subject)

        if isEmailAuth:
            print(f"Subject: {subject}")
            print(f"From: {fromPart}")
            if currEmail.is_multipart():
                for part in currEmail.walk():
                    contentType = part.get_content_type()
                    if contentType == "text/plain":
                        body = part.get_payload(decode=True).decode()
                        print(f"Body: {body}")
                    else:
                        print("Content is not default text")
                        continue
            else:
                body = currEmail.get_payload(decode=True).decode(currEmail.get_content_charset() or 'utf-8')
                print(f"Body: {body}")            
        else:
            continue


def deocde_email(rawEmail): 
    decodedEmail = message_from_bytes(rawEmail)
    subject = make_header(decode_header(decodedEmail['subject']))
    subjectStatus = is_email_subject_valid(subject)

    # If the email subject is related to Auth Info
    if subjectStatus:
        #Check if subject line contains code
        foundCode,authCode = check_for_auth_code(subject)
        if foundCode: 
            return authCode
        else:
            if decodedEmail.is_multipart():
                for part in decodedEmail.walk():
                    contentType = part.get_content_type()
                    if contentType == "text/plain":
                        body = part.get_payload(decode=True).decode()
                        foundCode, authCode = check_for_auth_code(body)
                        if foundCode:
                            return True,authCode
                    
            else:
                body = decodedEmail.get_payload(decode=True).decode(decodedEmail.get_content_charset() or 'utf-8')
                foundCode, authCode = check_for_auth_code(body)
                if foundCode:
                    return True, authCode
                else:
                    return False, None
    else:
        return False,None
   


# Regex patterns for email parsing
EMAIL_SUBJECT_AUTHCODE_REGEX = r'\b(verification|code|authentication|otp|2fa)\b'
EMAIL_CODE_REGEX_PATTERNS = [
    r'\b(?:code|otp|verification code|auth(?:entication)? code)\b(?:\s+is)?[:\s\-]*([A-Za-z0-9]{4,8})\b',
    # r'\b(?:code|otp|verification code|auth(?:entication)? code)[:\s\-]*([A-Za-z0-9]{4,8})\b',
    r'\b([0-9]{4,8})\b'
]

def is_email_subject_valid(emailSubject: str):
    pattern = re.compile(EMAIL_SUBJECT_AUTHCODE_REGEX,re.IGNORECASE) # Creates regex with search strings and not case sensitive
    match = pattern.search(emailSubject)

    if match:
        return True
    else:
        return False
    

def check_for_auth_code(text):
    for pattern in EMAIL_CODE_REGEX_PATTERNS:
        codeMatch = re.search(pattern,text,re.IGNORECASE)
        if codeMatch:
            return True,codeMatch.group(1)
        else:
            return False, None


def capture_verification_code(rawEmail):
    codeFound, code = deocde_email(rawEmail)
    if codeFound:
        return code
    else:
        return "Code not Found in Email"

