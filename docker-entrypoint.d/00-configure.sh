#!/bin/bash
if [ "x${FCGI_PORT}" != "x" ]; then
  echo "Setting FCGI_PORT to ${FCGI_PORT} in default.conf"
  sed -i "s/FCGI_PORT/${FCGI_PORT}/" /etc/nginx/conf.d/default.conf
fi
