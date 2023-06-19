@echo off
echo ------------------------------------------------
echo        GammaOS Lite v1.3 - Anbernic RG505
echo ------------------------------------------------
echo.
echo Please ensure you are flashing to the correct device. Close this window to stop the flashing process from starting.
echo Installation will begin in 30 seconds.

timeout /t 30 /NOBREAK

date /t >>log.txt 2>&1
echo %time% >>log.txt 2>&1
echo.  >>log.txt 2>&1

echo fastboot devices
fastboot devices
fastboot devices   >>log.txt 2>&1

echo fastboot flash vbmeta_a flash/vbmeta_custom.img
fastboot flash vbmeta_a flash/vbmeta_custom.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash vbmeta_b flash/vbmeta_custom.img
fastboot flash vbmeta_b flash/vbmeta_custom.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash boot_a flash/boot_custom_505.img
fastboot flash boot_a flash/boot_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash boot_b flash/boot_custom_505.img
fastboot flash boot_b flash/boot_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash dtbo_a flash/dtbo_custom_505.img
fastboot flash dtbo_a flash/dtbo_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash dtbo_b flash/dtbo_custom_505.img 
fastboot flash dtbo_b flash/dtbo_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash vendor_boot_a flash/vendor_boot_custom_505.img
fastboot flash vendor_boot_a flash/vendor_boot_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash vendor_boot_b flash/vendor_boot_custom_505.img
fastboot flash vendor_boot_b flash/vendor_boot_custom_505.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot delete-logical-partition vendor_a-cow
fastboot delete-logical-partition vendor_a-cow  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot delete-logical-partition vendor_b-cow
fastboot delete-logical-partition vendor_b-cow  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash vendor flash/vendor_custom_rp3_driver.img
echo This will take some time, please wait...
fastboot flash vendor flash/vendor_custom_rp3_driver.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot delete-logical-partition system_a-cow 
fastboot delete-logical-partition system_a-cow  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot delete-logical-partition system_b-cow 
fastboot delete-logical-partition system_b-cow  >>log.txt 2>&1
echo %ERRORLEVEL%

echo fastboot flash system flash/system_custom.img
echo This will take some time, up to 5 minutes, please wait...
fastboot flash system flash/system_custom.img  >>log.txt 2>&1
echo %ERRORLEVEL%

echo.
echo Flashing complete. Closing this window in 60 seconds.
timeout /t 60 /NOBREAK
