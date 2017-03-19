#!/bin/bash
if [ "x${FCGI_PORT}" != "x" ]; then
  remote_host=$(curl http://169.254.169.250/latest/self/stack/services/application/containers/0/name)
  echo "upstream catalyst { server ${remote_host}:${FCGI_PORT}; }" > /etc/nginx/conf.d/upstream.conf
else
  echo 'Nothing to do - no FCGI_PORT in env'
fi
