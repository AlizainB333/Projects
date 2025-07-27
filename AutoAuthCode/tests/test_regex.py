import unittest
from email_parser.parser import is_email_subject_valid

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
    
