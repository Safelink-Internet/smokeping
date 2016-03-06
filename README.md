[![Docker Stars](https://img.shields.io/docker/stars/safelinkinternet/smokeping.svg)](https://hub.docker.com/r/safelinkinternet/smokeping/) [![Docker Pulls](https://img.shields.io/docker/pulls/safelinkinternet/smokeping.svg)](https://hub.docker.com/r/safelinkinternet/smokeping/)
# Smokeping on Ubuntu
Total size of this image is:
[![](https://badge.imagelayers.io/safelinkinternet/smokeping:latest.svg)](https://imagelayers.io/?images=safelinkinternet/smokeping:latest 'Get your own badge on imagelayers.io')

## Running

Use this command to start the container. Smokeping will listen on port 8080.
```
docker run \
	--name smokeping \
	-d \
	-p 8080:80 \
	-e TZ="America/Boise" \
	-v <path/to/smokeping/data>:/data \
	-v <path/to/smokeping/config>:/config \
	safelinkinternet/smokeping
```

Once running the URL will be `http://<host-ip>:8080/cgi-bin/smokeping.cgi`.

________________________________________

### Configuration
**Parameters**

* `-p 80` - the port for the webUI
* `-e TZ` - configure the zoneinfo timezone, IE `America/Boise`
* `-v /data` - Storage location for db and application data (graphs etc)
* `-v /config` - All config files will be placed here

This container is based on phusion-baseimage. For shell access whilst the container is running do `docker exec -it smokeping /bin/bash`.

________________________________________
### Setting up the application

Basics are, edit the Targets file to ping the hosts you're interested in to match the format found here. Wait 10 minutes.

________________________________________
## Updates

* Upgrade to the latest version simply `docker restart smokeping`.
* To monitor the logs of the container in realtime `docker logs -f smokeping`.
