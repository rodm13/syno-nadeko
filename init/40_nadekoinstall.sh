#!/bin/bash
##Install NadekoBot
#Cleanup Old
rm -rf /root/NadekoBot

#Get NadekoBot Version
if [[ "$VERSION" = dev]]; then
	curl -s https://api.github.com/repos/Kwoth/NadekoBot/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4|wget -i - -O /root/NadekoBot.latest.zip &&\
else
	curl -s https://api.github.com/repos/Kwoth/NadekoBot/releases/latest | grep browser_download_url | head -n 1 | cut -d '"' -f 4|wget -i - -O /root/NadekoBot.latest.zip &&\
fi

unzip /root/NadekoBot.latest.zip -d /root/NadekoBot

#Sync any new data files
rsync --ignore-existing -r /root/NadekoBot/data /config

#Remove data folder
rm -rf /root/NadekoBot/data
