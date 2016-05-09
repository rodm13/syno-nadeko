#!/bin/bash
#Test For Old Style config files
if [-d /config/data]; then echo "Data dir ok"; else mkdir -p /config/data; fi
if test -f "/config/config.json"; then mv /config/config.json /config/data/config.json; else echo "New Config"; fi
if test -f "/config/nadekobot.sqlite"; then mv /config/nadekobot.sqlite /config/data/nadekobot.sqlite; else echo "New SQlite"; fi