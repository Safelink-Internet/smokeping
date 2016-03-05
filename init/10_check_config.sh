#!/bin/bash

if [ ! -f /config/Alerts ]; then
  cp /tmp/Alerts /config/Alerts
  chown abc:abc /config/Alerts
fi

if [ ! -f /config/Database ]; then
  cp /tmp/Database /config/Database
  chown abc:abc /config/Database
fi

if [ ! -f /config/General ]; then
  cp /tmp/General /config/General
  chown abc:abc /config/General
fi

if [ ! -f /config/Presentation ]; then
  cp /tmp/Presentation /config/Presentation
  chown abc:abc /config/Presentation
fi

if [ ! -f /config/Probes ]; then
  cp /tmp/Probes /config/Probes
  chown abc:abc /config/Probes
fi

if [ ! -f /config/Slaves ]; then
  cp /tmp/Slaves /config/Slaves
  chown abc:abc /config/Slaves
fi

if [ ! -f /config/Targets ]; then
  cp /tmp/Targets /config/Targets
  chown abc:abc /config/Targets
fi

if [ ! -f /config/pathnames ]; then
  cp /tmp/pathnames /config/pathnames
  chown abc:abc /config/pathnames
fi
