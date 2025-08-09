import imaplib
from email import message_from_bytes
from email.header import decode_header, make_header

# User information 
EMAIL = "azainbandukwala333@gmail.com"
APP_PASSWORD = "yrmf jife tqns bvwk".replace(" ", "")



def connect_to_mailbox(userEmail: str, appPassword: str, mailbox: str = "INBOX"):
    """
    Connect to the Gmail IMAP server and return the connection object.

    Args:
        userEmail (string): Email for User Inbox
        appPassword (string): Password for User Inbox (Enable 2FA to lower security risk)
        mailbox (string): Inbox Type to select

    Returns:
        mail (IMAP Object): Connection to User Mailbox   
    """
    EMAIL_PORT = 993 # Port of IMAP Connect

    mail = imaplib.IMAP4_SSL("imap.gmail.com", EMAIL_PORT)
    mail.login(userEmail, appPassword)
    mail.select(mailbox, readonly=True)  # Open the mailbox in read-only mode
    return mail


"""Fetch unseen emails from the mailbox."""

def fetch_unseen_mail(mail, limit: int = 10):
    """
    Using the mail connection fetch unseen emails based on the limit count 
    and return emails in a raw format

    Args:
        mail (IMAP Object): User Mailbox
        limit (number): count of how many emails to fetch 
    
    Returns:
        emails (array): List of raw unseen emails   
    """
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
        return emails
    else:
        print("Failed to search for unseen emails.")
        return []


def logout(mail):
    """Logout from the mailbox."""
    mail.logout()


