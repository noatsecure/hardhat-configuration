#!/bin/sh
/usr/sbin/semanage fcontext --add --type bwrap_exec_t /usr/bin/bwrap;
/usr/bin/chown u+s /usr/bin/bwrap;
