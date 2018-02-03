# lighttpd-Link
A lighttpd powered lightweight web server for the Steam Link

![](https://i.imgur.com/EGgvc40.png)

Could be used for system monitoring pages, web dashboards and so on...

----

# Requirements
- A Steam Link (obviously)
- SSH access to said Steam Link ([How to do just that](https://github.com/ValveSoftware/steamlink-sdk#ssh-access))

----

# How To Install
1. [Download the archive](https://github.com/fuzzymannerz/lighttpd-Link/archive/master.zip) and extract it somewhere.
2. Upload everything inside the "*Upload*" folder to the steam link's filesystem root.

**Note: Easy install script via SSH is a WIP.**

----

# Usage
### To Start:
```bash
lighttpd -f home/steam/http/serve.conf
```
It will now run as a background process until stopped or until the Steam Link is turned off.
### To Stop:
```bash
pkill lighttpd
```
See `home/steam/http/serve.conf` for a basic configuration example.    
Refer to https://redmine.lighttpd.net/projects/1/wiki/TutorialConfiguration for more info.

----

# Uninstallation
If you factory reset your Steam Link lighttpd-Link will be removed. Otherwise you can delete the files matching the ones in the "upload" folder of this repo. **Uninstall script is a WIP.**
