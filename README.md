# DCS World Script

Script for exporting data from DCS World

# HOW TO INSTALL SCRIPT > Video
Step by step how to install DCS World script  
### Click on the link or graphic to play the video on YouTube: [https://youtu.be/01tmF0n3mjQ](https://youtu.be/01tmF0n3mjQ)

[![How to install script](https://i9.ytimg.com/vi/01tmF0n3mjQ/mq1.jpg?sqp=COuXvvYF&rs=AOn4CLA7K8ool-vKjk4Qi5SeJVfXjpFBZQ)](https://youtu.be/01tmF0n3mjQ)

# latest script version in zip file
if you have any problem understanding how the DCS World script should be installed, download the zip file, it contains a schematic of the entire "Scripts" folder along with the main "Export.lua" file and the entire script

you'll find it on the "Releases" page
[https://github.com/pet333r/pw-dev_script/releases](https://github.com/pet333r/pw-dev_script/releases)

# supported software

![](.gfx/icon_dcsufc.png) ![](.gfx/icon_aoa.png) ![](.gfx/icon_mfdexporter.png)

* DCS AoA Indexer > [https://play.google.com/store/apps/details?id=com.dcsaoaindexer](https://play.google.com/store/apps/details?id=com.dcsaoaindexer)
* DCS UFC [https://play.google.com/store/apps/details?id=com.dcsufc](https://play.google.com/store/apps/details?id=com.dcsufc)
* DCS World MFD Exporter [http://pw-developer.com/soft_dcs_mfd.html](http://pw-developer.com/soft_dcs_mfd.html)
* SimFDR [http://pw-developer.com/soft_simfdr.html](http://pw-developer.com/soft_simfdr.html)
* DCS Script Tester [http://pw-developer.com/soft_udp.html](http://pw-developer.com/soft_udp.html)

[![DCS UFC](https://i9.ytimg.com/vi/qGfzUdCVLwc/mqdefault.jpg?time=1590659626854&sqp=CMiSvvYF&rs=AOn4CLB61i5uBikeuXCUyC2qnznosBU4fA)](https://youtu.be/qGfzUdCVLwc)  
[![DCS AoA Indexer](https://i9.ytimg.com/vi/OU6KO8tjmGo/mq1.jpg?sqp=CPObvvYF&rs=AOn4CLDm57daXCZ1JgJAvkLxekGQOVkonw)](https://youtu.be/OU6KO8tjmGo)

# manual installation

click that green button `Clone or download` and download ZIP file, save it wherevere You want on disk and unpack

next go to and open folder: (depending on the DCS World version you have installed..)
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

## automatic update script

in the future, just run the file `update_pw-dev_script.bat` to download the latest version of the script (the `Config.lua` file will be kept, the others will be replaced with the latest version)  
just run it from time to time or add a shortcut in the Windows Startup folder to have the script updated during system startup

## edit Config.lua 
in folder `pw-dev_script` open `Config.lua` for edit,  
there are several "groups" in the file: 
* device 1
* device 2
* device 3
* device 4

choose one of them and edit `Host` and `Port` (you can leave port the same, in most cases you don't even need to change)  
it is <span style="color:red">**IMPORTANT**</span> that the device's IP address matches and `PC / phone / tablet` must be on the same network  

### apps
- if You only use `DCS UFC` [https://play.google.com/store/apps/details?id=com.dcsufc](https://play.google.com/store/apps/details?id=com.dcsufc) set `ExportSelfData` to `false` (less data to be sent and processed by the application, longer battery life)
```
ExportScript.Config.ExportSelfData          = false
```
- other applications `DCS AoA Indexer` [https://play.google.com/store/apps/details?id=com.dcsaoaindexer](https://play.google.com/store/apps/details?id=com.dcsaoaindexer) must have this value set to `true` for proper working

example you will find below in the screenshot

To find Android device IP: go to `Settings > WiFi` > check the properties of your network   

to find the IP address of the computer with DCS World installed: [https://www.digitalcitizen.life/find-ip-address-windows](https://www.digitalcitizen.life/find-ip-address-windows)

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

should look like this (depending on the DCS version)  
folder `Scripts`  
![](.gfx/folders1.png)  
folder `pw-dev_script` inside `Scripts`  
![](.gfx/folders2.png)

# example connection
Example configuration:  
PC IP: 192.168.1.2  
phone IP: 192.168.1.3  

![](.gfx/dcs_script_connection.png)

# connection

***`1`*** if your network structure is more complicated than a (PC -> router <- Android device), devices may not be able to "see" each other because each belongs to a different subnet of the router, this must be changed in the router settings

***`2`*** it's best to assign a static IP address to your Android device's router (the router will always assign the same IP address to a device on your network)

# known issues

***`1`*** If You can interact with DCS but not receiving data  
  - You probably set wrong Your Android device IP in `Config.lua` file

***`2`*** If you receive data from DCS but no button works  
  - check if you have the correct PC address given in the DCS UFC settings  
  - your firewall probably blocking incomming connections, turn off the firewall for a few minutes and check if everything works (to unblock the default ListenerPort: 25070 / UDP)  
  [https://www.windowscentral.com/how-open-port-windows-firewall](https://www.windowscentral.com/how-open-port-windows-firewall)

# compability
Script may not work with some other scripts if they use similar solutions to connect to external applications. This is a known problem in DCS.  
If you noticed that something is not working and you are also using other scripts, put other scripts in the comment (add -- at the beginning of the entry) to check which ones do not want to work with each other.  

tested and works with :
 * DCS-BIOS
 * Tacview  
 * VAICOM PRO
 * SRS

 for users using SRS and VaicomPro (works when the script entry is "higher" in the file, above the SRS / VaicomPro entry)  
 example of the main `Export.lua` file (thanks to one user: `Arsenio`)
 ```
 local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]]);

local vaicomlfs = require('lfs'); dofile(vaicomlfs.writedir()..[[Scripts\VAICOMPRO\VAICOMPRO.export.lua]]);

pcall(function() local dcsSr=require('lfs');dofile(dcsSr.writedir()..[[Mods\Tech\DCS-SRS\Scripts\DCS-SimpleRadioStandalone.lua]]); end,nil);

local Tacviewlfs=require('lfs');dofile(Tacviewlfs.writedir()..'Scripts/TacviewGameExport.lua');
 ```

# license

The script is available free of charge under the LGPLv3 license.  
Part of the script was based on `DCS-ExportScripts` [https://github.com/s-d-a/DCS-ExportScripts](https://github.com/s-d-a/DCS-ExportScripts)  
Additional functionality was added and modified to increase performance and separate sending of individual data to reduce the load on the application.