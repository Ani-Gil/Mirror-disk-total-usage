#!/bin/bash
cd /siwoo.org-system/Mirror-disk-total-usage
git rm Mirror*
git commit -m "Delete"
git push origin master
