#!/bin/bash
#Test Configuration

cred="/config/credentials.json"
if [ -f "$cred" ] ; then echo "Credentials exist" ; else cp /root/NadekoBot/credentials_example.json /config/credentials.json ; fi

sql="/config/nadekobot.sqlite"
if [ -f "$sql" ] ; then echo "SQLite DB exists" ; else echo "" > /config/nadekobot.sqlite ;fi

#Remove Built in
rm /root/NadekoBot/credentials.json
rm /root/NadekoBot/data/nadekobot.sqlite

#Adding Config file sym links
ln -s /config/credentials.json /root/NadekoBot/credentials.json
ln -s /config/nadekobot.sqlite /root/NadekoBot/data/nadekobot.sqlite
