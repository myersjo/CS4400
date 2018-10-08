#!/bin/bash

FSHA256="sha256.hashes"

sudo gawk '/\$pbkdf2-sha256\$/ { print }' myersjo.hashes >> sha256.hashes
