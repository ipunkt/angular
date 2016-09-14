#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

chmod -R 777 /data/npm
export PATH="$PATH:/data/npm/bin:/data/npm/node_modules/.bin"

useradd --shell /bin/bash -u $USER_ID -o -c "" -m user &> /dev/null
export HOME=/home/user

mkdir -p /data/npm/node_modules
chmod 777 /data/npm/node_modules

if [ ! -L "node_modules" ] ; then
	ln -s /data/npm/node_modules
fi

exec /usr/local/bin/gosu user "$@"
