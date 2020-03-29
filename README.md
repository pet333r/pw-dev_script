# DCS World Script

Script for exporting data from DCS World

# installation

go to: (depending on the version you use)
* `c:\Users\{Your username}\Saved Games\DCS.openbeta\Scripts\`
* `c:\Users\{Your username}\Saved Games\DCS\Scripts\`  

if You don't have folder `Scripts`, simply create it and inside create file `Export.lua`
open and edit file: `\Scripts\Export.lua` (open in some simple text editor, I recommend Notepad++) and add: 

```
local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])
```

in `Scripts` folder create folder `pw-dev_script`, next put all files into this folder, the scheme of the folder with files should look like this  
```
\Scripts
  - \pw-dev_script
    - \lib
    - \Modules
    -  Config.lua
    -  Export.lua
  ``` 


next:  
open folder `pw-dev_script` and edit file `Config.lua` inside it,  
there are several "groups" in the file: 
* send (PC)
* send 2 (tablet)
* send 3 (phone)  

choose one of them and edit `Host` and `Port` (you can leave port the same, in most cases you don't even need to change)  
it is <span style="color:red">**IMPORTANT**</span> that the device's IP address matches and `PC / phone / tablet` must be on the same network  

example: to find Android tablet IP > go to `Settings > WiFi` > check the properties of your network   
example you will find below  

to find the IP address of the computer with DCS World installed: [https://www.digitalcitizen.life/find-ip-address-windows](https://www.digitalcitizen.life/find-ip-address-windows)

# supported software

* DCS AoA Indexer > [https://play.google.com/store/apps/details?id=com.dcsaoaindexer](https://play.google.com/store/apps/details?id=com.dcsaoaindexer)
* DCS UFC [https://play.google.com/store/apps/details?id=com.dcsufc](https://play.google.com/store/apps/details?id=com.dcsufc)
* DCS World MFD Exporter [http://pw-developer.com/soft_dcs_mfd.html](http://pw-developer.com/soft_dcs_mfd.html)
* SimFDR [http://pw-developer.com/soft_simfdr.html](http://pw-developer.com/soft_simfdr.html)
* DCS Script Tester [http://pw-developer.com/soft_udp.html](http://pw-developer.com/soft_udp.html)

# files scheme

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

Script may not work with some other scripts if they use similar solutions to connect to external applications. This is a known problem in DCS.  
If you noticed that something is not working and you are also using other scripts, put other scripts in the comment to check which ones do not want to work with each other.

tested and works with :
 * DCS-BIOS
 * Tacview
 * VAICOM PRO (not tested but it works differently and there should be no conflicts)

may not work with (not tested) : 
 * SRS