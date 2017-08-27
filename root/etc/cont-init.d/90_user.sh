#!/usr/bin/with-contenv bash
set -x
chown -R app:app /config
usermod -d /config -s /bin/bash app

: ${APP_PASSWORD:="Hu2grolrasJac!"}

echo "app:$APP_PASSWORD" | chpasswd

