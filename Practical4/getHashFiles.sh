#!/bin/bash

FHashes="myersjo.hashes"

FSHA256="sha256.hashes"
FMD5Crypt="md5crypt.hashes"
FSHA256Crypt="sha256crypt.hashes"
FSHA512Crypt="sha512crypt.hashes"
FARGON2i="argon2i.hashes"
FOther="other.hashes"

sudo gawk '/\$pbkdf2-sha256\$/ { print }' $FHashes >> $FSHA256
sudo gawk '/\$1\$/ { print }' $FHashes >> $FMD5Crypt
sudo gawk '/\$5\$/' $FHashes >> $FSHA256Crypt
sudo gawk '/\$6\$/' $FHashes >> $FSHA512Crypt
sudo gawk '/\$argon2i\$/' $FHashes >> $FARGON2i
sudo gawk '$0 !~ /\$/' $FHashes >> $FOther
