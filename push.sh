#!/bin/bash

NOW=$(date "+Mirror-Disk-Total-Usage_%m-%d-%Y")
df -BG | grep /siwoo.org > /siwoo.org-system/Mirror-disk-total-usage/$NOW
cd /root/Mirror-disk-total-usage
git add /root/Mirror-disk-total-usage/$NOW
git commit -m "Size update"
git push origin master
