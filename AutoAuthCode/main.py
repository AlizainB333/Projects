from email_fetch.client_login import connect_to_mailbox, fetch_unseen_mail, logout
from email_parser import display_email_data, display_email_data_all_formats

EMAIL = "azainbandukwala333@gmail.com"
APP_PASSWORD = "yrmf jife tqns bvwk".replace(" ", "")

# Connect to the mailbox and fetch the data from emails
mailBox = connect_to_mailbox(EMAIL, APP_PASSWORD)
emails = fetch_unseen_mail(mailBox,1)

#Display email data
# display_email_data(emails)
display_email_data_all_formats(emails)




