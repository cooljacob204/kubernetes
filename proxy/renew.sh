#!/bin/sh

certbot renew

cd /etc/letsencrypt/live/ # one day I'll look into actually learning Shell scripting so I wont' have to do every cert manually.

cat guest-portal.lfp2.gg/fullchain.pem guest-portal.lfp2.gg/privkey.pem > /etc/letsencrypt/certs/guest-portal.lfp2.gg.pem

service haproxy reload