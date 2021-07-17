#!/bin/sh
/usr/sbin/semanage fcontext --add --type bash_home_t /home/user/.bash_history;
/usr/sbin/semanage fcontext --add --type bash_home_t /home/user/.bash_logout;
/usr/sbin/semanage fcontext --add --type bash_home_t /home/user/.bash_profile;
/usr/sbin/semanage fcontext --add --type bash_home_t /home/user/.bashrc;
