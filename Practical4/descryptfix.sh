#! /bin/sh
BROKEN_IN="descrypt.broken"
BROKEN_OUT="descryptfix.broken"

sudo gawk '{ print $1, substr($2,1,7) }' $BROKEN_IN > $BROKEN_OUT

