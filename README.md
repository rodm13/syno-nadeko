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

##UnRAID Installation
Installing Nadeko into a Docker container on an UnRAID server is a relatively simple process that can be done quickly and easily.
This guide assumes you already have Docker installed and working correctly on your server.

- First, create a new container using the button in the Docker tab of the UnRAID control panel.
- Next, put the UI into Advanced Mode using the toggle at the top right of the module below the banner.
- Enter the name of the container into the container name box. This can be whatever you want, it is just a label.
- For the repository box, type in `uirel/nadeko`.
- Set the network type to Host and check both the Privileged and Bind Time boxes
- To set config folder paths, enter `/config` into the Container Volume box and the path for the host location.
  For example, `mnt/user/appdata/nadeko` is the location the container will save data to on disk.
- Leave the Environment Variables and Extra Parameters boxes blank unless you know what you are doing.
- For the Docker Hub URL, enter `https://github.com/Poag/nadeko`. This is how Docker finds the repository.
- Leave the WebUI and Banner boxes empty, and if you want to have an icon for the container in the UnRAID UI, put the URL in the box.

If everything was done correctly, hit the Create button at the bottom of the page and wait. The server should show a dialogue box that shows the image and its dependencies being pulled and extracted. Do not close this window until it is finished and you see the Done button at the bottom. After the installation is complete, you will see an error about a missing token begin to loop like you would with a regular terminal install. Go back to the Docker control panel and stop the container.
