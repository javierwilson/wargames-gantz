#!/bin/sh
#
# tmpserver is a shell script / file server. it serves files under /tmp
#
TMP="/tmp"
CMD="/bin/cat"

# No parameters
if [ -z "$1" ]; then
  echo "What can I do you for?"
  exit 1
fi

# Serve the file (if found)
if [ -f "$TMP/$1" ]; then
  sh -c "$CMD $TMP/$1"
else
  echo "404 $TMP/$1 Not Found" 
fi
