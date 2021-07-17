# Hardened Fedora (HF)
#### This is ongoing project that is currently not ready for daily usage.
HF is the Fedora alternative to the [Kicksecure](https://www.whonix.org/wiki/Kicksecure) project by the Whonix team that uses Debian. As an overview, both projects aim to provide a secure operating system [...]

However, there are a few fundamental differences between the projects, mainly the choice of mandatory access control (MAC). Kicksecure utilizes apparmor for confining programs and services, while HF uses SELinux.

## SELinux
HF heavily utilizes SELinux for confining programs such as chromium, thunderbird, mpv, and so on. SELinux is [description].

## Secure date and time
#### Credit: [madaidan](https://gitlab.com/madaidan/secure-time-sync) (original)
The date and time are obtained from HTTP headers rather than NTP. According to the Whonix developers, NTP has many issues and should be avoided, see:
https://www.whonix.org/wiki/Time_Attacks

Note that HF uses a rewritten vesion of madaidan's original script. This rewritten script is simpler, uses better Bash practices (eg. using single quotes for strings, double quotes for variables, ending lines with semicolons), and allows for multiple retries in case of network issues. However, it does not have Tor support.

## Hardened malloc
#### Credit: [GrapheneOS](https://github.com/GrapheneOS/hardened_malloc) (original), [Whonix](https://github.com/Whonix/hardened_malloc) (fork)
For a description of what the hardened memory allocator does, please see the README for the original project: https://github.com/GrapheneOS/hardened_malloc#introduction

HF uses the hardened malloc from Whonix, and is compiled with the following options so that pipewire can work:
> CONFIG_SLAB_QUARANTINE_RANDOM_LENGTH=0
> 
> CONFIG_SLAB_QUARANTINE_QUEUE_LENGTH=0
