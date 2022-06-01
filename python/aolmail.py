import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

def genEmail(user, passwd, to, subject, message):
    smtp=smtplib.SMTP_SSL('smtp.aol.com',465)
    smtp.login(user, passwd)

    msg = MIMEMultipart()
    msg['Subject'] = subject
    msg['From'] = user # This has to exist, and can't be forged
    msg['To'] = to
    msg.attach(MIMEText(message, 'plain'))

    smtp.sendmail(user, to, msg.as_string())
    smtp.quit()
