# NadekoBot a Discord bot 
Nadeko is written in C# and Discord.net for more information visit https://github.com/Kwoth/NadekoBot


## Docker Usage

```
docker create --name nadeko -v </path/to/appdata>:/config uirel/nadeko
```
docker start nadeko

**Parameters**

* `-v /config` - database and nadekobot configs, place your existing configs in this folder, or let the docker create blank ones for you and edit per the information @ https://github.com/Kwoth/NadekoBot


## Updates / Monitoring

* Upgrade to the latest version of sonarr simply `docker restart nadeko`.
* Monitor the logs of the container in realtime `docker logs -f nadeko`.


For information about configuring your bot or its functionality, please check the https://github.com/Kwoth/NadekoBot guides.
