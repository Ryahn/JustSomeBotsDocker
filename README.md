# Docker build for Just-Some-Bots MusicBot
<p align="center">
<strong>Please note that Just-Some-Bots does not support docker. I can provide limited support.</strong>
</p>

### Contributors & Authors
MusicBot - <a href="https://github.com/Just-Some-Bots/MusicBot">Just-Some-Bots</a><br>
Dockerfile (this repo) - <a href="https://github.com/Ryahn">Ryahn</a>

<p align="center"><img src="https://camo.githubusercontent.com/c33135310bc44943dede84870e1963dff8c46837/687474703a2f2f692e696d6775722e636f6d2f4c3657514f44322e706e67"/></p>

***

### 1: Requirements
You will need to have docker installed

* [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [Debian](https://docs.docker.com/install/linux/docker-ce/debian/)
* [CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)
* [Fedora](https://docs.docker.com/install/linux/docker-ce/fedora/)
* [Windows Server](https://docs.docker.com/install/windows/docker-ee/)
* [Windows Desktop](https://docs.docker.com/docker-for-windows/install/)
* [Mac](https://docs.docker.com/docker-for-mac/install/)

### 2: Clone
`git clone https://github.com/Ryahn/JustSomeBotsDocker.git musicbot && cd musicbot`

### 3: Configure
> **At this point you should [configure your bot](https://just-some-bots.github.io/MusicBot/#guidesconfiguration) and [Inviting Discord Bot To Your Discord Server](https://github.com/Ryahn/JustSomeBotsDocker/wiki/Inviting-Discord-Bot-To-Your-Discord-Server).**

### 4: Build
Now run
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker build -t musicbot .</pre>

### 5: Running the bot
**To start the bot**
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker run -d --name=musicbot -v $(pwd)/config:/musicBot/config musicbot</pre>

**Stop the bot**
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker kill $(docker ps -q -f ancestor=musicbot)</pre>
OR
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker kill musicbot</pre>

**Watching Logs**
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker logs -f musicbot</pre>
OR
<pre style="padding: 0;padding-top: 3px;padding-bottom: 3px; padding-left: 5px; padding-right: 5px;margin: 0;font-size: 85%;background-color: rgba(0,0,0,0.04);border-radius: 3px; display: inline;">docker logs -f $(docker ps -q -f ancestor=musicbot)</pre>