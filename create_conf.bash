#!/bin/bash

PGNAME=`basename $0`
SITE=$1
PORT=$2

if (( $# < 2)); then
    echo "$PGNAME usage requires SITE PORT"
    exit 55;
fi

sed 's/WEBSITE/'$SITE'/g' < xx-http > "00-$SITE.conf.tmp"
sed 's/PORT/'$PORT'/g' < "00-$SITE.conf.tmp" > "00-$SITE.conf"
rm "00-$SITE.conf.tmp"
