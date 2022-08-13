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