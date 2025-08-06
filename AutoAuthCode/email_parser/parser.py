from email import message_from_bytes
from email.header import decode_header, make_header
import re
from urllib.parse import urlparse

# Regex patterns for email parsing
EMAIL_SUBJECT_AUTHCODE_REGEX = r'\b(verification|code|authentication|otp|2fa)\b'
EMAIL_CODE_REGEX_PATTERNS = [
    r'\b(?:code|otp|verification code|auth(?:entication)? code)\b(?:\s+is)?[:\s\-]*([A-Za-z0-9]{4,8})\b',
    # r'\b(?:code|otp|verification code|auth(?:entication)? code)[:\s\-]*([A-Za-z0-9]{4,8})\b',
    r'\b([0-9]{4,8})\b'
]

# Email Info when Decoding 
#msg["From"]        # Sender's email
#msg["To"]          # Recipient(s)
#msg["Subject"]     # Email subject
#msg["Date"]        # Date sent
#msg["Cc"]          # Carbon copy
#msg["Bcc"]         # Blind carbon copy (rarely present)


def decode_email(rawEmail,url=None): 

    """
    Takes a raw email from IMAP fetch and deocdes it into subject and body info
    Takes a url for domain filtering to check for authentication codes

    Args:
        rawEmail (bytes): email object from IMAP fetch contains raw data.
        url (str | None): Optional. The Url link from current site if provided for domain filtering.
    
    Returns: 
        tuple[str,bool]: A tuple contianing:
            -otpCode (str | None): Authentication Code if found, otherwise None.
            -flag (bool): True if OTP is found, otherwsie false
    """
    if url:
        # Get domain info if availbale to filter more emails
        domain = extract_domain(url)
    else:
        domain = None

    # parseing Email info and converting to string format to read 
    # Different parts of the email
    decodedEmail = message_from_bytes(rawEmail)
    subject = str(make_header(decode_header(decodedEmail['subject'])))
    subjectContainsOTPInfo = is_email_subject_valid(subject,domain) # Check if subject related to OTP Info

    # If the email subject is related to Auth Info
    if subjectContainsOTPInfo:
        #Check if subject line contains code
        authCode, foundOTPCode = check_for_auth_code(subject)
        if foundOTPCode: 
            return authCode, True
        else:
            # If email has multiple parts find body section then check code
            if decodedEmail.is_multipart():
                for part in decodedEmail.walk():
                    contentType = part.get_content_type()
                    print(contentType)
                    if contentType in ("text/plain", "text/html"):
                        body = part.get_payload(decode=True).decode()
                        return check_for_auth_code(body)
                    else: 
                        continue
                print(f"Subject: {subject}")
                return None, False 
            else:
                # Email is not multpart check email body for otp info
                body = decodedEmail.get_payload(decode=True).decode(decodedEmail.get_content_charset() or 'utf-8')
                return check_for_auth_code(body)
    else:
        # Email not related to OTP
        return None, False


def extract_domain(url):
    """
    Extracts the domain name from a given url

    Args:
        url (url link): URL link from a document window fetch 
    Returns:
        domain name of url   
    """
    parsed = urlparse(url)
    # print(f"Parsed Url: {parsed}")
    domain_parts = parsed.netloc.split('.')
    # print(f"Domain parts: {domain_parts}")
    if len(domain_parts) >= 2:
        return domain_parts[-2]  
    return parsed.netloc


def is_email_subject_valid(emailSubject: str, domain=None):
    """
    Checks if an email subject header has correct information related 
    to the OTP code

    Args:
        emailSubject (str): Subject line for email 
        domain       (str | None): Domain name if foudn in url else None 
    Returns:
        flag (bool): If correct email name or code info found true else false   
    """
    if domain:
        domain_pattern = rf'\b{re.escape(domain)}\b'
        full_pattern = rf'(?=.*{domain_pattern})(?=.*{EMAIL_SUBJECT_AUTHCODE_REGEX})'
        pattern = re.compile(full_pattern,re.IGNORECASE)
    else:
        pattern = re.compile(EMAIL_SUBJECT_AUTHCODE_REGEX,re.IGNORECASE) # Creates regex with search strings and not case sensitive
        
    match = pattern.search(emailSubject)

    if match:
        return True
    else:
        return False
    

def check_for_auth_code(text):
    """
    Takes any text and checks for auth codes using regex patterns for 
    common otp information and checks for series 4-8 char of digits 
    or letters

    Args:
        text (string): Body of text usually from subject line or email body.
    Returns:
        tuple[str|None, bool]: 
            -code (str | None): OTP code if found, otherwise None.
            -flag (bool): If otp found true, otherwise false.

    """
    for pattern in EMAIL_CODE_REGEX_PATTERNS:
        codeMatch = re.search(pattern,text,re.IGNORECASE)
        if codeMatch:
            return codeMatch.group(1), True
        else:
            return None, False




# Functions Either not used or simplified from other function or helper functions 
def capture_verification_code(rawEmail):
    codeFound, code = decode_email(rawEmail)
    if codeFound:
        return code
    else:
        return "Code not Found in Email"

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