import imaplib
import datetime
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

    # Get Current Data today to only check UNSEEN from today
    today_date = datetime.date.today().strftime("%d-%b-%Y")
    status, messages = mail.search(None, f'UNSEEN SINCE {today_date}')
    # print(f"Messages {messages}")
    
    if status == "OK":
        allIds = messages[0].split()
        allIds.reverse()                # Reverse to get newest emails first
        limitedIds = allIds[:limit]     # Get the first 'limit' unseen messages

        # Changing fetch to now take in a list of messages to onyl fetch once not per instance
        emailIdList = [id.decode() for id in limitedIds]                    # Ids are now in a list in str format to send over mutiple
        strEmailList = ','.join(emailIdList)                                # Ids are joined together to pass to fetch
        fetchStatus, msgData = mail.fetch(strEmailList, '(BODY.PEEK[])')    # Multiple Emails are fetched 
        
        emails = []

        if fetchStatus == "OK":
            # Check if msgData has correct format before appending
            for part in msgData:
                if isinstance(part,tuple):
                    rawEmail = part[1]
                    emails.append(rawEmail)
                else:
                    continue
            print("Done fetching emails")
            return emails
        else:
            print("Failed to search for unseen emails.")
            return []
    else:
        print("Failed to search for unseen emails.")
        return []

        # Old Code Check to see if speed increases
        # # for id in limitedIds:
        #     # fetchStatus, msgData = mail.fetch(id, '(BODY.PEEK[])')
        #     if fetchStatus == "OK":
        #         rawEmail = msgData[0][1]
        #         emails.append(rawEmail)  # Store email data
        #     else:
        #         continue
        # print("Done fetching emails")
        # return emails


def logout(mail):
    """Logout from the mailbox."""
    mail.logout()


