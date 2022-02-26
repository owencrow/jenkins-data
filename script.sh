#!/bin/bash -x

NAME="$1"
#SECONDNAME="$2"
LASTNAME="$2"
SHOW="$3"

if [ "$SHOW" = "true" ]; then
	echo "Hello, $NAME $LASTNAME"
else
	echo "SHOW false"
fi
