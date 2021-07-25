#!/bin/sh
/usr/sbin/semanage fcontext --add --type chromium-browser_exec_t /usr/lib/chromium-browser/chromium-browser.sh;
/usr/sbin/semanage fcontext --add --type chromium-browser_exec_t /usr/bin/chromium-freeworld;
