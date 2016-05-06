#!/bin/bash
##Install NadekoBot

#Cleanup Old
rm -rf /root/NadekoBot

#Get NadekoBot Latest
curl -s https://api.github.com/repos/Kwoth/NadekoBot/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4|wget -i - -O /root/NadekoBot.latest.zip &&\
unzip /root/NadekoBot.latest.zip -d /root/NadekoBot
