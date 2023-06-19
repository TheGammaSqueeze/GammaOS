# Anbernic RG405M / RG505
# GammaOS + GammaOS Lite Custom Firmware - v1.3



- LineageOS based firmware for Anbernic Unisoc T618 devices
- Uses Retroid Pocket 3+ GPU Drivers for extra performance boost.
- Includes L2/R2 fixes and other enhancements.

- Like my work and want to buy me a coffee? Feel free to buy one here: https://ko-fi.com/thegammasqueeze


Download and instructions
----------------------------
- GammaOS v1.3 Full (Includes Google services and Play store) https://github.com/TheGammaSqueeze/GammaOS/releases

  
- GammaOS Lite v1.3 (No Google Services) https://github.com/TheGammaSqueeze/GammaOS/releases

Instructions:
- [Brand new install (Flashing from Stock Anbernic Firmware. Bootloader never unlocked before, flashing via fastbootd)](https://github.com/TheGammaSqueeze/GammaOS#instructions---brand-new-install-flashing-from-stock-anbernic-firmware-bootloader-never-unlocked-before-flashing-via-fastbootd)
- [Upgrading to v1.3 from GammaOS / Stock OS with unlocked bootloader](https://github.com/TheGammaSqueeze/GammaOS#instructions---upgrading-to-v13-from-gammaos--stock-os-with-unlocked-bootloader)
- [Help! My device is no longer booting! Or I want to go back to Stock OS!](https://github.com/TheGammaSqueeze/GammaOS#help-my-device-is-no-longer-booting-or-i-want-to-go-back-to-stock-os)

Information
----------------------------
GammaOS is based on LineageOS 19.1 (Android 12). It provides a debloated and performance optimized experience for users who are looking to get the best out of their Anbernic RG405M and RG505.

Features:
- Based on debloated and clean LineageOS 19.1 build, Android 12 for a smoother experience. GammaOS includes Google Services and Play Store. GammaOS Lite excludes Google apps and services for extra performance headroom.
- Daijisho launcher as front-end, pre-configured with RetroArch for some systems. (Optimized settings for GB,GBC,GBA,NES,SNES,Genesis,PSX) (BIOS files need to be supplied by you).
- Aurora store included.
- Adguard ad blocking included as default (can be disabled via Private DNS settings).
- Magisk/root included.
- 60hz refresh rate fix for display (stock is 61.2hz and can cause frame pacing issues with emulation).
- Oversharpening display fixed.
- Analog stick calibration for more tighter controls.
- CPU, GPU, Memory now using performance governors for extra performance boost.
- Experimental GPU drivers taken from Retroid Pocket 3+.
- L2/R2 fixed for apps and games with issues with those buttons. Change between XBOX and NS button layout by holding L3+L1+R1. Settings saved across reboots.
- Toggle between performance modes by holding down R3+L1+R1. Options are: Max Performance (everything set to max frequency, uses the most battery life), Normal Performance (scales frequency according to load), Power Save (lowers all frequencies to minimum for max battery life, useful for GBA and below). Recommend enabling threaded video in RetroArch for Power Save mode, or change emulators to less demanding ones.
- SafetyNet fix, present as Pixel phone: for fixing TMNT etc (Activated by toggling Magisk > Settings > Enable Zygote and reboot your device)

Other Information:
- RetroArch hotkey: (RG405M) Home/Back button / (RG505) Select Button
- RetroArch menu toggle: (L3 + R3). Choosing Close Content option closes the game and goes back to Daijisho
- RetroArch shortcuts (Hold hotkey down) + L1 = Slow Motion | L2 = Load State | R2 = Save State | R1 = Fast Forward | X = Show FPS | Y = Screenshot

What's missing:
- Built-in button to on-screen mapping software, alternative solutions can be found in app store.


Changelog
----------------------------

- (v1.3) Adding support for the RG505. (inc. 60hz fix, analog fix)
- (v1.3) Move to a unified single build for RG405M and RG505.
- (v1.3) Update Daijisho to latest version
- (v1.3) Add SafetyNet fix, present as Pixel phone: for fixing TMNT etc (New installs only, I don't want to overwrite any existing Magisk config. Activated by toggling Magisk > Settings > Enable Zygote and reboot). Existing installs can use this workaround: https://github.com/TheGammaSqueeze/GammaOS/issues/5#issuecomment-1590927275
- (v1.3) Increase polling rate for gamepad for more responsive inputs
- (v1.3) Hotkey update for the 505, it's now the select button. 405M is still the back/home button.
- (v1.3) Fix for multi-button presses not being registered in RetroArch (New installs only, don't want to overwrite RetroArch configs for existing installs. Manual fix is done by going in to RetroArch settings > Latency > Input block timeout =4 & Polling Behaviour = Early)
- (v1.3) Include ALL RetroArch cores in GammaOS. Updated defaults in Daijisho. (New installs only)
- (v1.3) Enabled threaded video by default in RetroArch (New installs only)
- (v1.3) Fix for some errors with autoscaling memory freq, and android phone subsystem crashing
-------
- (v1.3) Toggle between performance modes by holding down R3+L1+R1. Options are: Max Performance (everything set to max frequency, uses the most battery life), Normal Performance (scales frequency according to load), Power Save (lowers all frequencies to minimum for max battery life, useful for GBA and below). Recommend enabling threaded video in RetroArch for Power Save mode, or change emulators to less demanding ones. 
- (v1.3) Add persistence between reboots for XBOX or NS button layout selection.
- (v1.2) Add fix for L2/R2 issue, using my own code https://github.com/TheGammaSqueeze/retrogame_joypad_2_xbox
- (v1.2) Presents the physical gamepad as an xbox controller. This may require you to reconfigure your emulators and game controller settings if already on GammaOS.
- (v1.2) Back/Home button now functions the same as the stock OS. No more showing recent apps and goes back to home instead on long press.
- (v1.2) Toggle xbox button layout by holding L3+L1+R1 for 3 seconds, toggle back by using the same button combo (GammaOS only)
- (v1.2) Can use home/back button as a hotkey for RetroArch (only when pressed with another button, otherwise acts as normal home/back button)
- (v1.2) Adjust screen brightness by holding home/back button and using the right analog stick UP/DOWN to adjust
- (v1.2) Fix flashing issues for those on different partition layouts
- (v1.2) Import Anbernic v1.18 firmware brightness scaling fixes
- (v1.2) Remove Anbernic stock GPU drivers, Retroid Pocket 3+ perform better and are stable.
------
- (v1.1 Lite) Initial release for GammaOS Lite, super debloated build with no GSF. Extra tweaks made for additional performance, using Retroid GPU drivers.
------
- (v1.1) Update system base image to lineage-19.1-20230508-UNOFFICIAL-arm64_bgN.
- (v1.1) Unlock full speed DDR memory frequency to 1866mhz for added performance boost.
- (v1.1) Move Retroid Pocket 3+ graphics driver to separate experimental build. Reintroduce Anbernic graphics driver with added optimizations as default.
- (v1.1) Update flashing scripts to use alternative flashing method to prevent issues with incompatible devices. Updated instructions.
- (v1.1) Update RetroArch/Daijisho - for fresh installs/factory reset only. Change default SNES RetroArch core to Snes9x Current to overcome bug with controls not working when launching from Daijisho.
- (v1.1) Update RetroArch settings - for fresh installs/factory reset only. Menu toggle moved to L3 + R3 combo. Close Content menu option closes RetroArch and back to previous app (usually Daijisho). Increase menu font size.
- (v1.1) Update RetroArch hotkeys  - for fresh installs/factory reset only (Home/Back button + L1/Slow Motion | L2/Load State | R2/Save State | R1/Fast Forward | X/Show FPS | Y/Screenshot).
-------
- (v1.0) - Initial release

Instructions - Brand new install (Flashing from Stock Anbernic Firmware. Bootloader never unlocked before, flashing via fastbootd)
----------------------------

Skip this section if you have either 1) Already installed GammaOS 2) Unlocked your bootloader but are still on stock firmware. - Go to instructions for [Upgrading to v1.3 from GammaOS / Stock OS with unlocked bootloader](https://github.com/TheGammaSqueeze/GammaOS#instructions---upgrading-to-v13-from-gammaos--stock-os-with-unlocked-bootloader)

Video guide here for a brand new install from stock firmware (the same instructions apply to both RG405M and RG505): https://www.youtube.com/watch?v=PdE9vNRRjUI

[![Anbernic RG405M - Install GammaOS Custom Firmware v1](https://i3.ytimg.com/vi/PdE9vNRRjUI/maxresdefault.jpg)](https://www.youtube.com/watch?v=PdE9vNRRjUI "Anbernic RG405M - Install GammaOS Custom Firmware v1")

Prerequisites:
- Extract the GammaOS/GammaOSLite folder and its files before proceeding.
- ADB and Fastboot tools + drivers, ensure you install the Universal ADB Driver then reboot your computer: https://github.com/K3V1991/ADB-and-FastbootPlusPlus
- Install Unisoc Drivers (included in the release zip in the UnisocDrivers folder) - run the DPInst64.exe program in your relevant OS folder. (Win10 drivers will also work on Win11. Also available here: https://github.com/TheGammaSqueeze/GammaOS/releases/download/GammaOS_v1_RG405M/UnisocDrivers.zip)
- Enable USB Debugging on the RG405M/RG505: https://developer.android.com/studio/debug/dev-options

Unlocking bootloader:
- Connect your RG405M/RG505 to your PC via USB cable while booted into Android, open a command prompt window, and issue the following command: adb reboot bootloader
- Your RG405M/RG505 will reboot, and you will see the text "fastboot mode" on the screen next to the Anbernic logo
- Open this site in Google Chrome: https://thegammasqueeze.github.io/subut-rehost/
- Click Connect.
- Click "fastboot gadget" and connect.
- Click Unlock.
- On the device there will be a warning "Warning: Unlock device may erase user data. Press volume down button to confirm that. Press volume up button to cancel."
- Press the Home / Back button on the RG405M/RG505 to proceed.
- Wait for it to complete. The your RG405M/RG505 will display the message "Unlock bootloader success!"
- Ensure that the Google Chrome window with the thegammasqueeze.github.io/subut-rehost site is now shut before proceeding, otherwise the next commands won't work
- In your command prompt window, issue the following command: fastboot reboot fastboot
- You will now be booted into fastbootd mode, ensure that you see the fastbootd text on your RG405M/RG505 before proceeding


Flashing the custom firmware:
- Close all command prompt windows from before
- Navigate to your extracted GammaOS/GammaOSLite folder
- Open the 405-FlashPartitions.bat or 505-FlashPartitions.bat script depending on your device, it will begin flashing the firmware. This step can take up to 10 minutes so be patient.
- Open the EraseUserData.bat script, it will begin factory resetting your device in preperation for GammaOS. This step can take up to 10 minutes so be patient. When the script is complete, the command prompt window will close itself after 60 seconds.
- You can now reboot your RG405M/RG505 by pressing the power button once.
- Your device will reboot, and will stay at the Anbernic logo for about 2 minutes before booting into the new firmware for the first time. Reboots after this will be much quicker. Do not be alarmed by the debug messages warning about unlock and skip verify, this is normal after unlocking the bootloader
- Congratulations, you are now on GammaOS! 
- If you are booting back into the stock firmware and not GammaOS, then you may have an incompatible partition layout. You can verify this by looking for failures in the log.txt file in your GammaOS folder. To overcome this, you will need to flash the stock firmware with the unbricker tool and flash GammaOS again. Follow these instructions: [Help! My device is no longer booting! Or I want to go back to Stock OS!](https://github.com/TheGammaSqueeze/GammaOS#help-my-device-is-no-longer-booting-or-i-want-to-go-back-to-stock-os)


Instructions - Upgrading to v1.3 from GammaOS / Stock OS with unlocked bootloader
----------------------------

Video guide here for upgrading your firmware from GammaOS / Modified Stock OS: https://youtu.be/HQuK0o4PrDo

[![Upgrading GammaOS to v1.3 - Anbernic RG405M Custom Firmware CFW](https://i.imgur.com/EgOKl3J.png)](https://www.youtube.com/watch?v=HQuK0o4PrDo "Upgrading GammaOS to v1.3 - Anbernic RG405M Custom Firmware CFW")

Prerequisites:
- Extract the GammaOS/GammaOSLite folder and its files before proceeding.
- (Skip if done before) ADB and Fastboot tools + drivers, ensure you install the Universal ADB Driver then reboot your computer: https://github.com/K3V1991/ADB-and-FastbootPlusPlus
- (Skip if done before) Install Unisoc Drivers (included in the release zip in the UnisocDrivers folder) - run the DPInst64.exe program in your relevant OS folder. (Win10 drivers will also work on Win11. Also available here: https://github.com/TheGammaSqueeze/GammaOS/releases/download/GammaOS_v1_RG405M/UnisocDrivers.zip)
- (Skip if done before - Stock OS only) Enable USB Debugging on the RG405M/RG505 if on stock firmware: https://developer.android.com/studio/debug/dev-options

Flashing the custom firmware:
- Connect your USB cable from the RG405M/RG505 to your PC.
- While booted into GammaOS, hold down the power button and choose the Restart option, then choose the Recovery option. (If on Stock OS, open a command prompt window, issue the command: adb reboot fastboot)
- If you are on GammaOS, you will boot into a recovery screen, use the volume down button to navigate to the Enter Fastboot menu selection, press the power button once.
- You will now see the fastbootd menu, with the red fastbootd text at the top of the screen on your RG405M/RG505.
- Navigate to your extracted GammaOS/GammaOSLite folder
- Open the 405-FlashPartitions.bat or 505-FlashPartitions.bat script depending on your device, it will begin flashing the firmware. This step can take up to 10 minutes so be patient. When the flashing script is complete, the command prompt window will close itself after 60 seconds.
- (MANDATORY FOR STOCK OS USERS OR IF YOU ARE SWITCHING BETWEEN GAMMAOS AND GAMMAOS LITE) - Open the EraseUserData.bat script, it will begin factory resetting your device in preperation for GammaOS. This step can take up to 10 minutes so be patient. When the script is complete, the command prompt window will close itself after 60 seconds.
- Once the above is complete, press the power button once to reboot your device.
- Your device will reboot, and will stay at the Anbernic logo for about 2 minutes before booting into the new firmware for the first time. Reboots after this will be much quicker. Do not be alarmed by the debug messages warning about unlock and skip verify, this is normal after unlocking the bootloader
- Congratulations, you are now on the latest GammaOS! 


Help! My device is no longer booting! Or I want to go back to Stock OS!
----------------------------
In some cases, some RG405M/RG505 devices have a different eMMC parition configuration or different firmware configuration. When flashing this firmware on those specific devices, this can cause the device to fail to boot. 
In this case, you will need to use the RG405M/RG505 unbricking tool to return to stock firmware but with the desired partition configuration. Once this is done, you can then flash the GammaOS safely, or stay on StockOS. 

RG405M Unbricker via Black-Seraphs Patreon: https://www.patreon.com/posts/anbernic-rg405m-81427437
RG505 Unbricker: https://drive.google.com/file/d/1WNildo8TZDW6L4tzY9SDEjL3NhPGg_gG/view?usp=drive_link

Video guide here to restore to stock firmware: https://www.youtube.com/watch?v=fT6kulEfWXo

[![Anbernic RG405M Flash back to stock / unbricking guide](https://i.imgur.com/rZg9moi.png)](https://www.youtube.com/watch?v=fT6kulEfWXo "Anbernic RG405M Flash back to stock / unbricking guide")


Prerequisites:
- For the RG405M, Download all 13 Anbernic-RG405M-V1.15-Unbricker.7z.xxx files from the Black-Seraph Patreon. Extract the Anbernic-RG405M-V1.15-Unbricker.7z.001 file to a folder using a tool such as 7-zip.
- For the RG505, download the unbricker from the Google Drive link and extract the folder. 
- (Skip if done before) Install Unisoc Drivers (included in the release zip in the UnisocDrivers folder) - run the DPInst64.exe program in your relevant OS folder. (Win10 drivers will also work on Win11. Also available here: https://github.com/TheGammaSqueeze/GammaOS/releases/download/GammaOS_v1_RG405M/UnisocDrivers.zip)

Flashing the Stock OS:
- In the folder that you extracted the unbricking files to, open the UpgradeDownload.exe application.
- Click the top left Cogwheel/Load Packet icon, this will open an Open file prompt. Navigate to the folder that you extracted the unbricking files to, and open the Firmware folder. Select the Firmware.pac file.
- The tool will now start unpacking the firmware files, this make take up to 5 minutes and the tool may be unresponsive during this time. You will see a progress bar at the bottom of the application.
- Once loaded, you will see the text next to the question mark icon: PACKET: RG405M OR RG505. At this point, press the Play/Start Downloading icon.
- Connect your USB cable to your RG405M/RG505 and plug the cable in to your PC if not done already. 
- Now hold down the following buttons on your RG405M/RG505: POWER + VOL DOWN + BACK, and don't let go until you see a progress bar that mentions Downloading appear on the flashing tool on your pc. When you see this progress bar, you can let go of the buttons.
- Wait for up to 10 minutes for the flashing process to complete. The process is complete when you see the following in the flashing tool: _POWEROFF_ - Finish - PASSED.
- You can now unplug the USB cable, and power on your RG405M/RG505 by holding down the POWER + VOL DOWN buttons until you see the Anbernic logo. If you unlocked your bootloader previously, this will persist and you'll still see the debug unlocked text on startup. This is normal.
- You are now back on stock firmware!

Flashing the custom firmware (optional if you want GammaOS), please follow instructions closely for those on Stock OS: 
Follow the instructions for [Upgrading to v1.3 from GammaOS / Stock OS with unlocked bootloader](https://github.com/TheGammaSqueeze/GammaOS#instructions---upgrading-to-v13-from-gammaos--stock-os-with-unlocked-bootloader)


Credits
----------------------------
TheGammaSqueeze - Author - https://github.com/TheGammaSqueeze/

TacoPizza#4158 - Testing and Support

Andy Yan - Providing GSI builds: https://sourceforge.net/projects/andyyan-gsi/files/lineage-19.x/
