# HardHat
#### This is ongoing project that is currently not ready for daily usage.
HardHat is a hardening framework for the Fedora Linux operating system. The project aims to provide a more secure linux desktop experience through the use of SELinux, seccomp, and other security technologies. 

## SELinux
Custom SELinux policies have been written for both applications as well as files and directories on the system.

## Secure date and time
#### Credit: [madaidan](https://gitlab.com/madaidan/secure-time-sync) (original)
The date and time are obtained from HTTP headers rather than NTP. According to the Whonix developers, NTP has many issues and should be avoided, see:
https://www.whonix.org/wiki/Time_Attacks

Note that HardHat uses a rewritten vesion of madaidan's original script. This rewritten script is simpler, uses better Bash practices (eg. using single quotes for strings, double quotes for variables, ending lines with semicolons), and allows for multiple retries in case of network issues. However, it does not have Tor support.

## Hardened malloc
#### Credit: [GrapheneOS](https://github.com/GrapheneOS/hardened_malloc) (original), [Whonix](https://github.com/Whonix/hardened_malloc) (fork)
For a description of what the hardened memory allocator does, please see the README for the original project: https://github.com/GrapheneOS/hardened_malloc#introduction

HardHat uses the hardened malloc from Whonix, and is compiled with the following options so that pipewire can work:
> CONFIG_SLAB_QUARANTINE_RANDOM_LENGTH=0
> 
> CONFIG_SLAB_QUARANTINE_QUEUE_LENGTH=0
