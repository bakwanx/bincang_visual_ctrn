#!/bin/sh

# Dynamically append user from env
if [ -n "$TURN_USER" ] && [ -n "$TURN_PASS" ]; then
  echo "user=$TURN_USER:$TURN_PASS" >> /etc/coturn/turnserver.conf
fi

# Start coturn
exec turnserver -c /etc/coturn/turnserver.conf