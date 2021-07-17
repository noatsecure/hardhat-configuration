#!/bin/sh
for dir in /run/media/user/*; do
    /usr/sbin/semanage fcontext --add --type run_media_user_t "/var${dir}";
done;
