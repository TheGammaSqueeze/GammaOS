#!/bin/bash

set -e

echo ---------------------------------------
echo "GammaOS Lite v1.3.1 - Anbernic RG405M" 
echo ---------------------------------------

if ! [ -x "$(command -v fastboot)" ]; then
   echo "ERROR: fastboot seems not installed, please install it!"
fi

echo "fastboot devices"
fastboot devices
fastboot devices >> log.txt 2>&1

echo "fastboot flash vbmeta_a flash/vbmeta_custom.img"
fastboot flash vbmeta_a flash/vbmeta_custom.img  >>log.txt 2>&1

echo "fastboot flash vbmeta_b flash/vbmeta_custom.img"
fastboot flash vbmeta_b flash/vbmeta_custom.img  >>log.txt 2>&1

echo "fastboot flash boot_a flash/boot_custom_405.img"
fastboot flash boot_a flash/boot_custom_405.img  >>log.txt 2>&1

echo "fastboot flash boot_b flash/boot_custom_405.img"
fastboot flash boot_b flash/boot_custom_405.img  >>log.txt 2>&1

echo "fastboot flash dtbo_a flash/dtbo_custom_405.img"
fastboot flash dtbo_a flash/dtbo_custom_405.img  >>log.txt 2>&1

echo "fastboot flash dtbo_b flash/dtbo_custom_405.img"
fastboot flash dtbo_b flash/dtbo_custom_405.img  >>log.txt 2>&1

echo "fastboot flash vendor_boot_a flash/vendor_boot_custom_405.img"
fastboot flash vendor_boot_a flash/vendor_boot_custom_405.img  >>log.txt 2>&1

echo "fastboot flash vendor_boot_b flash/vendor_boot_custom_405.img"
fastboot flash vendor_boot_b flash/vendor_boot_custom_405.img  >>log.txt 2>&1

echo "fastboot delete-logical-partition vendor_a-cow"
fastboot delete-logical-partition vendor_a-cow  >>log.txt 2>&1

echo "fastboot delete-logical-partition vendor_b-cow"
fastboot delete-logical-partition vendor_b-cow  >>log.txt 2>&1

echo "fastboot flash vendor flash/vendor_custom_rp3_driver_405.img"
echo "This will take some time, please wait..."
fastboot flash vendor flash/vendor_custom_rp3_driver_405.img  >>log.txt 2>&1

echo "fastboot delete-logical-partition system_a-cow"
fastboot delete-logical-partition system_a-cow  >>log.txt 2>&1

echo "fastboot delete-logical-partition system_b-cow"
fastboot delete-logical-partition system_b-cow  >>log.txt 2>&1

echo "fastboot flash system flash/system_custom.img"
echo This will take some time, up to 5 minutes, please wait...
fastboot flash system flash/system_custom.img  >>log.txt 2>&1

echo "Flashing complete."
echo "Closing this windows in 60 secondes"
sleep 60
exit
