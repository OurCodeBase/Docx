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