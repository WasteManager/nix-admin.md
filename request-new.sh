#script to generate new csr, give CSR to sysadmin to generate new server.key

#!/bin/bash

mkdir -p "./old_$(date +'%d-%b-%Y')"
mv server.* "./old(date +'%d-%b-%Y')"

openssl req out SERVER.csr -newkey rsa:2048 -nodes -keyout
SERVER.key -config san.cnf
