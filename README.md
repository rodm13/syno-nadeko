# NadekoBot a Discord bot 
Nadeko is written in C# and Discord.net for more information visit https://github.com/Kwoth/NadekoBot


## Docker Usage

```
docker create --name nadeko -v /<appdata>:/config uirel/nadeko
```
Edit the <appdata> path to the location you want to store your credentials.json files. eg /appdata or /nadeko

Edit your credentials.json file per the guide @ https://github.com/Kwoth/NadekoBot then
```
docker start nadeko
```
**Parameters**

* -v /<appdata>:/config - This is the file location of your persistent information. Your DB and credential information


## Updates / Monitoring

* Upgrade to the latest version of Nadeko simply `docker restart nadeko`.
* Monitor the logs of the container in realtime `docker logs -f nadeko`.


For information about configuring your bot or its functionality, please check the https://github.com/Kwoth/NadekoBot guides.
