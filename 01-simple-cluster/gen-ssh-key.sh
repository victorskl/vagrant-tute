#!/usr/bin/env bash

FILE=$HOME/.ssh/id_rsa.pub

if [[ -f "$FILE" ]]; then
  echo "$FILE already existed"
else
  echo "$FILE is not found. Generating one..."
  cat /dev/zero | ssh-keygen -t rsa -b 4096 -q -N ""
fi
