# lighttpd-Link
A lighttpd powered lightweight web server for the Steam Link



# Requirements
- A Steam Link (obviously)
- SSH access to said Steam Link ([How to do just that](https://github.com/ValveSoftware/steamlink-sdk#ssh-access))

# How To Install

## Using the Steam Link itself via SSH (Recommended for ease)
1. SSH into the Steam Link.
2. Run the following:
```bash
wget https://raw.githubusercontent.com/fuzzymannerz/lighttpd-Link/master/lighttpd-Link-install.sh && chmod +x lighttpd-Link-install.sh && ./lighttpd-Link-install.sh
```

## Using a computer
1. [Download the archive](https://github.com/fuzzymannerz/lighttpd-Link/archive/master.zip) and extract it somewhere.
2. Upload everything inside the "*Upload*" folder to the steam link's filesystem root.

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

# Uninstallation
If you factory reset your Steam Link lighttpd-Link will be removed. Otherwise you can run the following via SSH:
```bash
wget https://raw.githubusercontent.com/fuzzymannerz/lighttpd-Link/master/lighttpd-Link-remove.sh && chmod +x lighttpd-Link-remove.sh && ./lighttpd-Link-remove.sh
```
