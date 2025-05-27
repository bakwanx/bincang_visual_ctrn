FROM instrumentisto/coturn:latest

COPY turnserver.conf /etc/coturn/turnserver.conf
COPY fullchain.pem /certs/fullchain.pem
COPY privkey.pem /certs/privkey.pem

RUN chmod 644 /certs/fullchain.pem /certs/privkey.pem