#!/bin/bash
apt update -y && apt install -y curl

apt install -y socat

curl https://get.acme.sh | sh -s email=romepeng@outlook.com

#echo "alias acme.sh='~/.acme.sh/acme.sh'" >> ~/.bashrc
#source ~/.bashrc

#read -p "input email for ssl: " EMAIL
#echo -e "your email : $EMAIL"

#~/.acme.sh/acme.sh --register-account -m $EMAIL

read -p "input domain for ssl: " DOMAIN
echo -e "your domain is $DOMAIN"

~/.acme.sh/acme.sh --installcert -d $DOMAIN --key-file /root/private.key --fullchain-file /root/cert.crt
