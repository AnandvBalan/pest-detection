# utils.py

from flask_mail import Message, Mail
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import smtplib
from flask import render_template, current_app as app  # Use current_app for app context in Flask

mail = Mail()

def send_email(subject, recipient, text_body, html_body=None):
    """Sends an email using Flask-Mail or SMTP directly.

    Args:
        subject (str): Email subject.
        recipient (str): Recipient's email address.
        text_body (str): Email body in plain text.
        html_body (str, optional): Email body in HTML format. Defaults to None.

    Returns:
        bool: True if email sent successfully, False otherwise.
    """
    try:
        # Prioritize Flask-Mail for security and convenience
        if app.config['MAIL_SERVER']:
            msg = Message(subject, sender=app.config['MAIL_DEFAULT_SENDER'], recipients=[recipient])
            msg.body = text_body
            if html_body:
                msg.html = html_body
            mail.send(msg)
            return True

        # Fallback to SMTP if Flask-Mail not configured
        else:
            msg = MIMEMultipart('alternative')
            msg['Subject'] = subject
            msg['To'] = recipient
            msg['From'] = app.config['MAIL_USERNAME']

            # Create the body of the message (a plain-text and an HTML version).
            part1 = MIMEText(text_body, 'plain')
            part2 = MIMEText(html_body or text_body, 'html')  # Use text_body if html_body is not provided

            # Attach parts into message container.
            # According to RFC 2046, the last part is prioritized.
            msg.attach(part1)
            msg.attach(part2)

            with smtplib.SMTP_SSL(app.config['MAIL_SERVER'], app.config['MAIL_PORT']) as server:
                server.login(app.config['MAIL_USERNAME'], app.config['MAIL_PASSWORD'])
                server.sendmail(msg['From'], msg['To'], msg.as_string())

        return True

    except Exception as e:
        print(f"Error sending email: {e}")
        return False
