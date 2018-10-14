#! /bin/sh
BROKEN_IN="descrypt-cs-tmp.broken"
BROKEN_OUT="descrypt-csfix.broken"

sudo gawk '{ print $1, substr($2,1,7) }' $BROKEN_IN > $BROKEN_OUT

