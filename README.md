# Aria2forMagisk

An aria2 module for magisk

The default configuration files are [P3TREX/aria2.conf](https://github.com/P3TERX/aria2.conf)

# How to use personal configuration

**If the module is not installed**


  Put all your configuration files to ```/sdcard/Android/data/aria2/``` or you can just copy all files in config folder into it and modify them.

-------

**If the module is already installed**


  Put all your configuration files to ```/sdcard/Android/data/aria2/``` or you can just copy all files in config folder into it and modify them.

  Create a file named update in ```/sdcard/Android/data/aria2/```

  Reboot
  
  *tips: if you want to update your configurations you can use this method*
  
-------

**Remember:**
  1. The aria2.conf file cannot be renamed or removed *(means there must be an aria2.conf)* but you can modify it or you can just create a new file and name it aria2.conf and then put your own configurations into it

  2. files referered in aria2.conf must have a prefix ```/data/adb/module/aria2_for_magisk/config```
  
  3. scripts that will be executed should have a suffix ```.sh```
  

