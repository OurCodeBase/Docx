### AOLMAIL PY
```shell
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
```

### JSON PY
```shell
import json

# Make an empty dictionary
listObj={}

# Open the json file
file=open('post.json')

# Convert Json to dictionary for python
listObj=json.load(file)

# Printing Json Values
print(listObj)
print(type(listObj))

""" Updating Json Data"""

# Empty space
print("")

# Second Python Dictionary To replace
dictionary2={"elon":"musk","energy":"glucose"}

# Adding 2nd Dictionary data to the Python dictionary
listObj=dict(listObj)
listObj.update(dictionary2)

# Delete Elements from python dictionary
#del listObj["e"]

# Printing Updated Python Dictionary
print(listObj)
print(type(listObj))

# Open and write file
file_add=open('post.json','w')

# Converting Python dictionary to json
json.dump(listObj,file_add)
```

### TEXT TO SPEECH PY
```shell
import os
from gtts import gTTS

# Text you want to convert
speech=input("Input Text: ")

# Filename
file='output.mp3'

# Voice Language
en='en'

# gTTS object
myobj=gTTS(speech,lang=en,slow=False)
myobj.save(file)

""" Your linux must have sox module """
""" apt install sox """

# Commands To Run
cmd_play="play output.mp3"
cmd_del="rm output.mp3"

# Run Commands
os.system(cmd_play)
os.system(cmd_del)
```
