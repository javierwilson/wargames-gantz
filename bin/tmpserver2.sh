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

# No directory traversal!
ARG=`/bin/echo $1|/bin/sed -s "s/\.\.//g"`

# Serve the file (if found)
if [ -f "$TMP/$ARG" ]; then
  sh -c "$CMD $TMP/$ARG"
else
  echo "404 $TMP/$ARG Not Found" 
fi
