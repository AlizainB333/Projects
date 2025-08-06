from email_fetch.client_login import connect_to_mailbox, fetch_unseen_mail, logout
from email_parser import display_email_data, display_email_data_all_formats, decode_email


EMAIL = "azainbandukwala333@gmail.com"
APP_PASSWORD = "yrmf jife tqns bvwk".replace(" ", "")


def get_otp_from_email(url=None):
    # Connect to the mailbox and fetch the data from emails
    mailBox = connect_to_mailbox(EMAIL, APP_PASSWORD)
    rawEmails = fetch_unseen_mail(mailBox,10)

    for rawEmail in rawEmails:
        otpCode, otpFound = decode_email(rawEmail)
        if otpFound:
            return otpCode, otpFound
        else:
            continue
    
    return "OTP Not Found", False


# authCode, foundFlag = get_otp_from_email()

# print(authCode)
    

    


