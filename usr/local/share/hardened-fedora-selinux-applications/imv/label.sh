#!/bin/sh
/usr/sbin/semanage fcontext --add --type imv_exec_t /usr/bin/imv-msg;
/usr/sbin/semanage fcontext --add --type imv_exec_t /usr/bin/imv-wayland;
/usr/sbin/semanage fcontext --add --type imv_exec_t /usr/bin/imv-x11;
