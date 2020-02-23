# DCS World Script

Script for exporting data from DCS World

# installation

go to: (depending on the version you use)
* `c:\Users\{Your username}\Saved Games\DCS.openbeta\Scripts\` 
* `c:\Users\{Your username}\Saved Games\DCS\Scripts\`


and create folder `pw-dev_script`, next put all files into this folder,
then go to file `Export.lua` in `Scripts` folder and add:

`dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])`

next edit file `\pw-dev_script\Config.lua` and change ***IP/port*** for Your ***PC/phone/tablet*** (where You want to send data from DCS World)

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