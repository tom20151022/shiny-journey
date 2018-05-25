#!/bin/bash
HOST=xxx.xxx.xxx.xxx
USER=xx
PASSWORD=xxx
ftp   -i -u $HOST <<EOF
user $USER $PASSWORD
binary
cd    direcotory
put file1
get file2
quit
EOF

