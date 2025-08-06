import unittest
from email_parser.parser import is_email_subject_valid
from email_parser.parser import extract_domain

class TestRegex(unittest.TestCase):
    def test_subject_verification_true(self):
        subjects = [
            "Your verification code is",
            "Your verificationEE code is",
            "Your cOde is",
            "The 2FA for this is ",
            "THe authentication message",
            "THe Authentication message",
            "THe AuthentiCAtion message"
            "THe AuthentiCAtion message"
        ]

        for subject in subjects:
            with self.subTest(subject=subject):
                self.assertTrue(is_email_subject_valid(subject), msg=f"Failed for subject: {subject}")

    def test_subject_verification_false(self):
        subjects = [
            "Your ver codee is",
            "Your codee is",
            "The 2FAss s for this is ",
            "THe authenticatione message",
            "THe AAuthentication message",
            "THe AuthentiCAti on message"
            "THe Authen  tiCAtion message"
        ]

        for subject in subjects:
            with self.subTest(subject=subject):
                self.assertFalse(is_email_subject_valid(subject), msg=f"Failed for subject: {subject}")
    
    def test_subject_verification_with_domain(self):
        subjects = [
            "Amazon verification code: 123456",
            "Your Amazon OTP is 987654",
            "Use this authentication code for amazon",
            "Amazon.com 2FA code: 246810",
            "Amazon password reset code",
            "Google verification code",
            "Your OTP for Google login",
            "Google account authentication code",
            "2FA code for your Google account",
            "Google password reset code",
            "PayPal OTP: 123123",
            "Your PayPal verification code",
            "Use this code to login to PayPal",
            "PayPal 2FA request",
            "PayPal authentication attempt"
        ]

        domains = [
            "amazon",
            "amazon",
            "amazon",
            "amazon",
            "amazon",
            "google",
            "google",
            "google",
            "google",
            "google",
            "paypal",
            "paypal",
            "paypal",
            "paypal"
        ]

        for subject, domain in zip(subjects,domains):
            with self.subTest(subject=subject):
                self.assertTrue(is_email_subject_valid(subject,domain),msg=f'Failed Test {subject}')


    def test_url_domain_parser(self):
        urls_links = [
            "https://www.amazon.com/ap/signin",
            "https://accounts.google.com/signin/v2",
            "https://login.microsoftonline.com/",
            "https://www.netflix.com/login",
            "https://www.facebook.com/login",
            "https://twitter.com/account/login",
            "https://www.instagram.com/accounts/login/",
            "https://www.paypal.com/signin",
            "https://www.linkedin.com/uas/login",
            "https://www.apple.com/apple-id/"
        ]

        correctUrlDomains = [
            "amazon",
            "google",
            "microsoftonline",
            "netflix",
            "facebook",
            "twitter",
            "instagram",
            "paypal",
            "linkedin",
            "apple"
        ]

        for url, correctDomain in zip(urls_links,correctUrlDomains):
            with self.subTest(url=url):
                self.assertEqual(extract_domain(url),correctDomain,msg=f"Incorrect message for {url}")
        
                

