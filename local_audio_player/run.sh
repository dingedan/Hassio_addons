#!/bin/bash
set -e

echo "starting!"

# Read from STDIN aliases to play file
while read -r input; do
    # removing JSON stuff
    input="$(echo "$input" | jq --raw-output '.')"
    echo "[Info] Read alias: $input"

    if ! msg="$(play $input)"; then
    	echo "[Error] Playing failed -> $msg"
    fi    
   #  if ! msg="$(AUDIODEV=hw:0,0 play $input)"; then
   #  	echo "[Error] Playing failed -> $msg"
  	# fi
done