# NadekoBot a Discord bot 
Nadeko is written in C# and Discord.net for more information visit https://github.com/Kwoth/NadekoBot


## Docker Usage

```
docker create --name nadeko -v </path/to/appdata>:/config uirel/nadeko
```
docker start nadeko

**Parameters**

* `-v /config` - database and nadekobot configs, place your existing configs in this folder, or let the docker create blank ones for you and edit per the information @ https://github.com/Kwoth/NadekoBot

### User / Group Identifiers

**TL;DR** - The `PGID` and `PUID` values set the user / group you'd like your container to 'run as' to the host OS. This can be a user you've created or even root (not recommended).

Part of what makes our containers work so well is by allowing you to specify your own `PUID` and `PGID`. This avoids nasty permissions errors with relation to data volumes (`-v` flags). When an application is installed on the host OS it is normally added to the common group called users, Docker apps due to the nature of the technology can't be added to this group. So we added this feature to let you easily choose when running your containers.  

## Updates / Monitoring

* Upgrade to the latest version of sonarr simply `docker restart nadeko`.
* Monitor the logs of the container in realtime `docker logs -f nadeko`.


For information about configuring your bot or its functionality, please check the https://github.com/Kwoth/NadekoBot guides.