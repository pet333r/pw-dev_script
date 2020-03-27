# DCS World Script

Script for exporting data from DCS World

# installation

go to: (depending on the version you use)
* `c:\Users\{Your username}\Saved Games\DCS.openbeta\Scripts\`
* `c:\Users\{Your username}\Saved Games\DCS\Scripts\`

and create folder `pw-dev_script`, next put all files into this folder,  
then go to file: `\Scripts\Export.lua` and add:

```
local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])
```

next edit file `\pw-dev_script\Config.lua` and change ***IP/port*** for Your ***PC/phone/tablet*** (where You want to send data from DCS World)  
example you will find below

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
    - Config.lua (edit IP / port)
    - Export.lua
  - Export.lua (add: dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]]))
  ```

# apps config

Enter the computer's IP address to connect the application with the computer, preferably check via `cmd.exe`, run command line and type: `ipconfig`, also set the same port used for data exchange.

# example connection
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

may not work with (not tested) : 
 * SRS