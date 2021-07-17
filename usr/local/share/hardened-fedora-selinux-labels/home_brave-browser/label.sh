#!/bin/sh
/usr/sbin/semanage fcontext --add --type home_brave-browser_t /home/user/.cache/BraveSoftware;
/usr/sbin/semanage fcontext --add --type home_brave-browser_t /home/user/.config/BraveSoftware;
