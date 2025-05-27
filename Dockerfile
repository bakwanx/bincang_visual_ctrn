FROM instrumentisto/coturn:latest

COPY turnserver.conf /etc/coturn/turnserver.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]