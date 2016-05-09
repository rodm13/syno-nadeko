#!/bin/bash
#Test Configuration
if test -f "/config/credentials.json"; then echo "Creds Exist"; else cp /root/NadekoBot/credentials_example.json /config/credentials.json; fi

#Remove Built in
rm /root/NadekoBot/credentials.json


#Adding Config file sym links
ln -s /config/credentials.json /root/NadekoBot/credentials.json