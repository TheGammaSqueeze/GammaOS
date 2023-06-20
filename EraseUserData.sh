#!/bin/bash

echo Ignore any errors. This step can take up to 10 minutes, please wait!

fastboot flash userdata flash/userdata.img
fastboot erase metadata
fastboot format metadata
fastboot -w 

echo "Ignore any errors. /userdata and /metadata wiped ! Factory reset complete. Closing this window in 60 secondes"
sleep 60
exit
