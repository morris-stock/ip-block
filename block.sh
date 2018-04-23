#!/usr/bin/env bash

while read ip; do
    grep -q $ip /etc/firewalld/direct.xml \
        || firewall-cmd  --zone=public --permanent --direct --add-rule ipv4 filter INPUT 1 -m tcp --source ${ip} -p tcp --dport 22 -j DROP
done

firewall-cmd --reload
