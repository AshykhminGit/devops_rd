#1/bin/bash


#find "$PWD" -type f -name '*.txt' -printf "%k %h/%f\n" | sort -rg

find /var/log -type f -name '*.*' -printf "%k %h/%f\n" | sort -rg >> logs_sizes.txt
