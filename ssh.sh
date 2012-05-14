#!/bin/sh 
# ~/bin/ssh.sh
# A wrapper for ssh

# Set specific bgcolor
~/bin/perhostcolor/perhostcolor.sh $@
# ssh to ...
/usr/bin/ssh $@
# Reset to original bgcolor
~/bin/perhostcolor/perhostcolor.sh

