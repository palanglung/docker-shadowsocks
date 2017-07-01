#!/bin/env sh

/bin/shadowsocks-server \
  -p 5555 \
  -k ${SS_PASSWORD} \
  -u
