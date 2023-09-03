#!/bin/bash

NOW=$(date "+Mirror-Disk-Total-Usage_%m-%d-%Y")
df -BG | grep /siwoo.org > /siwoo.org-system/Mirror-disk-total-usage/$NOW
cd /siwoo.org-system/Mirror-disk-total-usage
git add *
git commit -m "Size update"
git push origin master
