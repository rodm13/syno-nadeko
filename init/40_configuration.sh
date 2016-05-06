#!/bin/bash
#Test Configuration

if test -f "/config/credentials.json"; then echo "Creds Exist"; else cp /root/NadekoBot/credentials_example.json /config/credentials.json; fi
if test -f "/config/nadekobot.sqlite"; then echo "SQlite Exist"; else echo "" > /config/nadekobot.sqlite; fi
if test -f "/config/config.json"; then echo "Config Exist"; else cp /root/NadekoBot/data/config_example.json /config/config.json; fi


#Remove Built in
rm /root/NadekoBot/credentials.json
rm /root/NadekoBot/data/nadekobot.sqlite
rm /root/NadekoBot/data/config_example.json

#Adding Config file sym links
ln -s /config/credentials.json /root/NadekoBot/credentials.json
ln -s /config/nadekobot.sqlite /root/NadekoBot/data/nadekobot.sqlite
ln -s /config/config.json /root/NadekoBot/data/config.json