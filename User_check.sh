#!/bin/bash

input=${1:- /tmp/winusers}
target=${2:- /tmp/passwd}

for i in $(cat $input)
do
 [[ "$i" == "$(echo "$(cat $target|awk -F ":" '{print $1}')" | grep $i)" ]] && echo "user $i exists" || echo "user $i doesn't exists"
done
