#!/bin/bash

NOW=$(date "+Mirror-Disk-Total-Usage_%m-%d-%Y")
df -BG | grep /WEB > /root/Mirror-Disk-Total-Usage/$NOW
cd /root/Mirror-Disk-Total-Usage
git add /root/Mirror-Disk-Total-Usage/$NOW
git commit -m "Size update"
git push origin master
