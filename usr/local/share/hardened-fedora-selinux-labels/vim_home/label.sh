#!/bin/sh
/usr/sbin/semanage fcontext --add --type vim_home_t /home/user/.vim;
/usr/sbin/semanage fcontext --add --type vim_home_t /home/user/.viminfo
/usr/sbin/semanage fcontext --add --type vim_home_t /home/user/.vimrc;
