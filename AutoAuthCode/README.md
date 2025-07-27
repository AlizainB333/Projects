# AutoAuthCode

AutoAuthCode is a Python application that automatically fetches authentication codes (such as 2FA or verification codes) from your email inbox and helps autofill them into login pages for smoother verification.

## Features

- Connects to Gmail and Outlook using IMAP
- Detects and extracts verification codes from email bodies using regex
- Supports multiple email accounts
- Modular design for easy customization and extension

## Getting Started

### Prerequisites

- Python 3.8 or higher
- An email account with IMAP access enabled (Gmail, Outlook, etc.)
- App passwords if you use two-factor authentication on your email

### Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/AutoAuthCode.git
    cd AutoAuthCode
    ```

2. Create and activate a virtual environment:
    ```bash
    python -m venv venv
    # On Windows
    venv\Scripts\activate
    # On macOS/Linux
    source venv/bin/activate
    ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

### Usage

1. Configure your email credentials in the appropriate config files or environment variables.
2. Run the main script:
    ```bash
    python main.py
    ```

3. The app will connect to your inbox, find recent verification emails, extract codes, and autofill where needed.

## Testing

Run unit tests with:

```bash
python -m unittest discover tests
