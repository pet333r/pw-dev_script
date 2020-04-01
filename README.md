# DCS World Script

Script for exporting data from DCS World

# installation

installation can be done in 2 ways: automatic & manual

## automatic install

for automatic install script simply download 2 files from this repository:
* install.bat
* install.ps1  

save it wherevere You want and run `install.bat` file, script automaticly found Your DCS World versions or if You have both standalone and openbeta installed script will tell You which version to install, after that a window will open in which to run the file `update_pw-dev_script.bat` script download latest files from github

now You need only edit `Config.lua` file in `pw-dev_script`

in the future, just run the file `update_pw-dev_script.bat` to download the latest version of the script (the `Config.lua` file will be kept, the others will be replaced with the latest version)  
just run it from time to time or add a shortcut in the Windows Startup folder to have the script updated during system startup

## manual installation

click that green button `Clone or download` and download ZIP file, save it wherevere You want on disk and unpack

next go to and open folder: (depending on the version you have installed..)
* `c:\Users\{Your username}\Saved Games\DCS.openbeta\Scripts\`
* `c:\Users\{Your username}\Saved Games\DCS\Scripts\`  
or if you have both, choose one or both DCS versions to install script;-)

if You don't have folder `Scripts`, simply create it and inside create file `Export.lua`
open it for edit, I recommend Notepad++ for this and add: 

```
local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])
```
save & close

in `Scripts` folder create folder `pw-dev_script`, next put all files from extracted ZIP into this folder, the scheme of the folder with files should look like this  
```
\Scripts
  - \pw-dev_script
    - \lib
    - \Modules
    -  Config.lua
    -  Export.lua
  ``` 


## edit Config.lua 
in folder `pw-dev_script` open `Config.lua` for edit,  
there are several "groups" in the file: 
* send (PC)
* send 2 (tablet)
* send 3 (phone)  

choose one of them and edit `Host` and `Port` (you can leave port the same, in most cases you don't even need to change)  
it is <span style="color:red">**IMPORTANT**</span> that the device's IP address matches and `PC / phone / tablet` must be on the same network  

example you will find below in the screenshot

To find Android device IP: go to `Settings > WiFi` > check the properties of your network   

to find the IP address of the computer with DCS World installed: [https://www.digitalcitizen.life/find-ip-address-windows](https://www.digitalcitizen.life/find-ip-address-windows)

# supported software

![](.gfx/icon_dcsufc.png) ![](.gfx/icon_aoa.png) ![](.gfx/icon_mfdexporter.png)

* DCS AoA Indexer > [https://play.google.com/store/apps/details?id=com.dcsaoaindexer](https://play.google.com/store/apps/details?id=com.dcsaoaindexer)
* DCS UFC [https://play.google.com/store/apps/details?id=com.dcsufc](https://play.google.com/store/apps/details?id=com.dcsufc)
* DCS World MFD Exporter [http://pw-developer.com/soft_dcs_mfd.html](http://pw-developer.com/soft_dcs_mfd.html)
* SimFDR [http://pw-developer.com/soft_simfdr.html](http://pw-developer.com/soft_simfdr.html)
* DCS Script Tester [http://pw-developer.com/soft_udp.html](http://pw-developer.com/soft_udp.html)

# files scheme

this is how the file scheme with folders should look

```
\Scripts
  - \pw-dev_script
    - \lib
    - \Modules
    -  Config.lua (edit IP / port connected devices)
    -  Export.lua

  - Export.lua (add:  local lfs=require('lfs');
                      dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]]))
  ```

# example connection
Example configuration:  
PC IP: 192.168.1.2  
phone IP: 192.168.1.3  

![](.gfx/dcs_script_connection.png)

# license

The script is available free of charge under the LGPLv3 license.  
Part of the script was based on `DCS-ExportScripts` [https://github.com/s-d-a/DCS-ExportScripts](https://github.com/s-d-a/DCS-ExportScripts)  
Additional functionality was added and modified to increase performance and separate sending of individual data to reduce the load on the application.

# known issues

'1' Script may not work with some other scripts if they use similar solutions to connect to external applications. This is a known problem in DCS.  
If you noticed that something is not working and you are also using other scripts, put other scripts in the comment to check which ones do not want to work with each other.

tested and works with :
 * DCS-BIOS
 * Tacview
 * VAICOM PRO (not tested but it works differently and there should be no conflicts)

may not work with (not tested) : 
 * SRS

'2' If You can interact with DCS but not receiving data You probably set wrong Your device IP in `Config.lua` file