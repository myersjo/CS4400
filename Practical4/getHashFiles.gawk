#!/bin/gawk -f 
/$pbkdf2-sha256$/ { print $0 >> sha256.hashes }
