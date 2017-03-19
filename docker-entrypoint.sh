#!/bin/bash

DIR=/docker-entrypoint.d

if [[ -d "$DIR" ]]
then
  /usr/bin/run-parts -v --regex '\.(sh|rb)$' "$DIR"
fi
exec "$@"
