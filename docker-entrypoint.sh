#!/bin/bash

DIR=/docker-entrypoint.d

if [[ -d "$DIR" ]]
then
  /usr/bin/run-parts -v "$DIR"
fi
exec "$@"
