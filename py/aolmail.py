import smtplib
import random
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

# Connecting To Server
server=smtplib.SMTP_SSL('smtp.aol.com',465)

# Variables
email='harsh7i@aol.com'
password='udnjulhngetulijt'
to_email=input('Enter a Valid Email: ')
to_email=str(to_email)
verify_code=random.randint(12345,98765)
verify_code=str(verify_code)
message="This is Your Verification Code to Confirm email."

# Message
msg=MIMEMultipart()
msg['Subject']="TODO: Your Verification Code is "+verify_code
msg['From']=email
msg['To']=to_email
msg.attach(MIMEText(message,'plain'))


# Login in Server
server.login(email,password)

# Sending Mail
server.sendmail(email,to_email,msg.as_string())

# Server Quit
server.quit()

# Conclusion
print("Your Message with Code "+verify_code+" has been successfully sent to "+to_email)