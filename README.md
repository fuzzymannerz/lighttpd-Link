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
2. Upload everything inside the "*Upload*" folder to the steam link's filesystem root via SSH. (Mounted or WinSCP etc...)

----

# Usage
### To Start:
```bash
lighttpd -f /home/steam/http/serve.conf
```

Note: You may first need to `chmod +x /usr/local/sbin/lighttpd`

It will now run as a background process until stopped or until the Steam Link is turned off.
### To Stop:
```bash
pkill lighttpd
```
See `home/steam/http/serve.conf` for a basic configuration example.    
Refer to https://redmine.lighttpd.net/projects/1/wiki/TutorialConfiguration for more info.

----

# Uninstallation
If you factory reset your Steam Link lighttpd-Link will be removed.    
Otherwise you can run the fancy uninstall script.

**To unininstall everything, including the "*/home/steam/http*" folder:**
```bash
wget https://raw.githubusercontent.com/fuzzymannerz/lighttpd-Link/master/rmLighttpd-Link.sh && chmod +x rmLighttpd-Link.sh && sh rmLighttpd-Link.sh
```

**To just remove all files apart from the "*/home/steam/http*" folder:**
```bash
wget https://raw.githubusercontent.com/fuzzymannerz/lighttpd-Link/master/rmLighttpd-Link.sh && chmod +x rmLighttpd-Link.sh && sh rmLighttpd-Link.sh keephttp
```
