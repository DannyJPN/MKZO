#!bin/bash


apt install gpg
gpg --keyserver pgpkeys.mit.edu --recv-key ED444FF07D8D0BF6
gpg -a --export ED444FF07D8D0BF6| sudo apt-key add -
if [ $(cat /etc/apt/sources.list| grep -ci kali) -le 0 ]; then
echo "" >> /etc/apt/sources.list;
echo "deb [trusted=yes] http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list;
echo "deb-src [trusted=yes] http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list;
fi

apt update
apt install libssl-dev zlib1g-dev perl libnet-telnet-perl libnet-ssh-perl      libpath-tiny-perl dh-make-perl apt-file cisco-torch
