# Anbernic RG405M - GammaOS Custom Firmware - v1


LineageOS based firmware for Anbernic Unisoc T618 devices

Build instructions coming soon

Download
----------------------------
https://drive.google.com/file/d/1Lz-T_E72fe2axRR2P80tAj5s8YTZ_C4y/view?usp=share_link

Credits
----------------------------
TheGammaSqueeze - Author - https://github.com/TheGammaSqueeze/

TacoPizza#4158 - Testing and Support

Andy Yan - Providing GSI builds: https://sourceforge.net/projects/andyyan-gsi/files/lineage-19.x/

Information
----------------------------
GammaOS is based on LineageOS 19.1 (Android 12). It provides a debloated and performance optimized experience for users who are looking to get the best out of their Anbernic RG405M.

Features:
- Based on debloated and clean LineageOS 19.1 build, Android 12 for a smoother experience. Non-essential apps removed.
- Daijisho launcher as front-end, pre-configured with RetroArch for some systems. (Optimized settings for GB,GBC,GBA,NES,SNES,Genesis,PSX)
- Play store & Aurora store included.
- Adguard ad blocking included as default (can be disabled via Private DNS settings).
- Magisk/root included (can be enabled after rebooting the device).
- 60hz refresh rate fix for display (stock is 61.2hz and can cause frame pacing issues with emulation).
- Oversharpening display fixed.
- Analog stick calibration for more tighter controls.
- CPU and GPU now using performance governors for extra performance boost.
- New GPU drivers taken from Retroid Pocket 3+ for extra performance boost.

What's missing:
- Built-in button to on-screen mapping software, alternative solutions can be found in app store.
- L2/R2 fix for some Android games (also an issue in Anbernic stock firmware), due to missing GAS and BRAKE emulated joypad inputs. Can't fix without kernel sources from Anbernic.


Instructions (For unlocked bootloader only, flashing via fastbootd)
----------------------------

Video guide here: https://youtu.be/0PX-YhjDSdQ

[![Anbernic RG405M - Install GammaOS Custom Firmware v1](https://i.imgur.com/cUtYNLw.png)](https://www.youtube.com/watch?v=0PX-YhjDSdQ "Anbernic RG405M - Install GammaOS Custom Firmware v1")

Prerequisites:
- Extract the GammaOS folder and its files before proceeding.
- ADB and Fastboot tools + drivers, ensure you install the Universal ADB Driver then reboot your computer: https://github.com/K3V1991/ADB-and-FastbootPlusPlus
- Unisoc Drivers - run the DPInst64.exe program in your relevant OS folder, (Win10 drivers will also work on Win11): https://github.com/TheGammaSqueeze/GammaOS/releases/download/GammaOS_v1_RG405M/UnisocDrivers.zip
- Enable USB Debugging on the RG405M: https://developer.android.com/studio/debug/dev-options

Unlocking bootloader:
- Connect your RG405M to your PC via USB cable while booted into Android, open a command prompt window, and issue the following command: adb reboot bootloader
- Your RG405M will reboot, and you will see the text "fastboot mode" on the screen next to the Anbernic logo
- Open this site in Google Chrome: https://thegammasqueeze.github.io/subut-rehost/
- Click Connect.
- Click "fastboot gadget" and connect.
- Click Unlock.
- On the device there will be a warning "Warning: Unlock device may erase user data. Press volume down button to confirm that. Press volume up button to cancel."
- Press the Home / Back button on the RG405M to proceed.
- Wait for it to complete. The your RG405M will display the message "Unlock bootloader success!"
- Ensure that all Google Chrome windows are now shut before proceeding
- In your command prompt window, issue the following command: fastboot reboot fastboot
- You will now be booted into fastbootd mode, ensure that you see the fastbootd text on your RG405M before proceeding


Flashing the custom firmware:
- Close all command prompt windows from before
- Navigate to your extracted GammaOS folder
- Open the flashpartitions.bat script, it will begin flashing the firmware. This step can take up to 10 minutes so be patient
- When the flashing script is complete, the command prompt window will close itself, you can now reboot your RG405M by pressing the power button once
- Your device will reboot, and will stay at the Anbernic logo for about 2 minutes before booting into the new firmware for the first time. Reboots after this will be much quicker. Do not be alarmed by the debug messages warning about unlock and skip verify, this is normal after unlocking the bootloader
- Congratulations, you are now on GammaOS! 
