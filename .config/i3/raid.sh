#!/bin/bash

# get raid status
STATE=$(sudo mdadm --detail /dev/md0 | grep -oP '(?<=State : )(.*)$')

echo $STATE # full
echo $STATE # short

# color
if [[ ! ${STATE} =~ ^(clean|active) ]]; then
    echo "#FF0000"
fi

