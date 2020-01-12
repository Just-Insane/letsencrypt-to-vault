FROM certbot/dns-cloudflare

RUN mkdir /certs-dir && apk update && apk add bash curl

ADD ./letsencrypt-to-vault /usr/bin

ENTRYPOINT [ "letsencrypt-to-vault" ]
