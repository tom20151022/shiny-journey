#!/bin/bash
HOST=199.101.116.38
USER=rbbackup
PASSWORD=DJFLDJFSF
ftp   -i -u $HOST <<EOF
user $USER $PASSWORD
binary
cd  test
put a.sh
get tom.sh
quit
EOF

