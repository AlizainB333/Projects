import imaplib
from email import message_from_bytes
from email.header import decode_header, make_header

# User information 
EMAIL = "azainbandukwala333@gmail.com"
APP_PASSWORD = "yrmf jife tqns bvwk".replace(" ", "")


"""Connect to the Gmail IMAP server and return the connection object."""

def connect_to_mailbox(userEmail: str, appPassword: str, mailbox: str = "INBOX"):
    # Connect to the Gmail IMAP server and return the connection object.
    EMAIL_PORT = 993 # Port of IMAP Connect

    mail = imaplib.IMAP4_SSL("imap.gmail.com", EMAIL_PORT)
    mail.login(userEmail, appPassword)
    mail.select(mailbox, readonly=True)  # Open the mailbox in read-only mode
    return mail


"""Fetch unseen emails from the mailbox."""

def fetch_unseen_mail(mail, limit: int = 10):
    # Search for unseen emails and return the first 'limit' emails.
    status, messages = mail.search(None, 'UNSEEN')
    
    if status == "OK":
        allIds = messages[0].split()
        allIds.reverse()  # Reverse to get newest emails first
        limitedIds = allIds[:limit]  # Get the first 'limit' unseen messages

        emails = []
        for id in limitedIds:
            fetchStatus, msgData = mail.fetch(id, '(BODY.PEEK[])')
            if fetchStatus == "OK":
                rawEmail = msgData[0][1]
                emails.append(rawEmail)  # Store email data
            else:
                continue
                # print(f"Failed to fetch email with ID {id.decode()}")
        return emails
    else:
        print("Failed to search for unseen emails.")
        return []


"""Logout from the mailbox."""
def logout(mail):
    mail.logout()





# # Port for secure IMAP connection
# EMAIL_PORT = 993

# #Connect to the Gmail IMAP server
# mail = imaplib.IMAP4_SSL("imap.gmail.com",EMAIL_PORT)

# mail.login(EMAIL, APP_PASSWORD)
# mail.select("INBOX")
# status, messages = mail.search(None, 'UNSEEN')

# if status == "OK":
#     # Get all message IDs of unseen emails
#     allIds = messages[0].split()
#     allIds.reverse()  # Reverse the list to get newest emails first
#     firstFive = allIds[:10]  # Get the first five unseen messages

#     for id in firstFive:
#         # fetchStatus, msgData = mail.fetch(id, '(RFC822)')
#         # Using peek to avoid marking the email as read
#         fetchStatus, msgData = mail.fetch(id, '(BODY.PEEK[])')
#         if fetchStatus == "OK":
#             currentEmail = message_from_bytes(msgData[0][1])
#             decodedSubject = make_header(decode_header(currentEmail['Subject']))
#             print(f"Subject: {decodedSubject}")
#             # print(f"Subject: {currentEmail['subject']}")
#             print(f"Data: {currentEmail['date']}")
#         else:
#             print(f"Failed to fetch email with ID {id.decode()}")
# else:
#     print("Failed to search for unseen emails.")


