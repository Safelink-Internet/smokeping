# Smokeping

Smokeping keeps track of your network latency. For a full example of what this application is capable of visit [UCDavis](http://smokeping.ucdavis.edu/cgi-bin/smokeping.fcgi).

## Usage

```
docker create \
	--name smokeping \
	-p 8080:80 \
	-v <path/to/smokeping/data>:/data \
	-v <path/to/smokeping/config>:/config \
	safelinkinternet/smokeping
```

Once running the URL will be `http://<host-ip>:8080/cgi-bin/smokeping.cgi`.

**Parameters**

* `-p 80` - the port for the webUI
* `-v /data` - Storage location for db and application data (graphs etc)
* `-v /config` - All config files will be placed here

This container is based on phusion-baseimage with ssh removed, for shell access whilst the container is running do `docker exec -it smokeping /bin/bash`.

## Setting up the application

Basics are, edit the Targets file to ping the hosts you're interested in to match the format found here. Wait 10 minutes.

## Updates

* Upgrade to the latest version simply `docker restart smokeping`.
* To monitor the logs of the container in realtime `docker logs -f smokeping`.


**Credits**

* jlbyh2o <jeremy@safelinkinternet.com>

**Version**

2016.03.05: This is our first release.
