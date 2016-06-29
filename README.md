# NadekoBot a Discord bot 
Nadeko is written in C# and Discord.net for more information visit https://github.com/Kwoth/NadekoBot

## Install Docker
Follow the respective guide for your operating system found here https://docs.docker.com/engine/installation/

## Nadeko Setup Guide
For this guide we will be using the folder /nadeko as our config root folder.

```
docker run --name nadeko -v /nadeko:/config uirel/nadeko
```
Lots of text will scroll past as the container is setup. After a few minutes it will start looping with an error about a lack of a token.
Press CTRL+C at this point.

Edit your /nadeko/credentials.json file per the guide @ https://github.com/Kwoth/NadekoBot/wiki/Credentials.json-and-data-config.json using a tool of your choice eg nano
```
nano /nadeko/credentials.json
```
Atfer editing the config file we can restart Nadeko

```
docker start nadeko
```

After a few moments you should be able to invite Nadeko to your server. If you cannot check the log file for errors 

```docker logs nadeko```



## Updates / Monitoring

* Upgrade to the latest version of Nadeko simply `docker restart nadeko`.
* Monitor the logs of the container in realtime `docker logs -f nadeko`.


For information about configuring your bot or its functionality, please check the https://github.com/Kwoth/NadekoBot guides.
