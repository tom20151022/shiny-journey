#!/bin/bash
##track website change
##./track_change.sh weburl
if  [  $ne -ne  1 ];then
echo "Usage:$0 URL\n"
exit  1
fi
first_run=0
if  [ ! -e  "recent_html" ];then
first_run=1
fi
if  [ $first_run -ne  1 ];then
curl   -s  -o $1    last_html
change=${diff  -u last_html   recent_html}
if  [  -z   $change  ];then
echo "$1 is  no change"
else
echo "$1  is change.."
echo $change
fi
else
echo "this is first run,arichving.."
fi
cp last_html recent_html
