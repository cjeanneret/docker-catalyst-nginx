#!/bin/bash
sed -i "s/FCGI_PORT/${FCGI_PORT}/" /etc/nginx/conf.d/default.conf
