#!/bin/bash

ip=$1

usage () {
  echo "usage: $0 < ipaddress >"
  exit
}
if [ -z $ip ]; then
 usage
fi

if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        #echo "this $ip is valid"
        if [[ "PING" == "$(timeout 5s ping $ip|grep -o PING)" ]]; then
          echo "this ip is not available"
        else
          echo "this is available"
        fi
else
        echo "this $ip is invalid"
fi
