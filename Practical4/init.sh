#! /bin/sh

cd ~/Documents/CS4400
sudo mkdir Wordlists
cd Wordlists
sudo wget http://datashaping.com/passwords.txt
sudo wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
cd ../Practical4

#sudo hashcat -a 0 -m 500 md5crypt.hashes ../Wordlists/rockyou.txt --session=md5crypt -O
