#!/bin/bash

# Mostly killing stuff
pkill -9 jackd
pkill -9 jackdbus

# pkill -9 "jack-plumbing"

# Kill this custom 'filtermidicommands' script
# ps axf | grep filtermidicommand[s] | grep -v grep | awk '{print "kill " $1}' | sh

# Kill a2jmidid
pkill -9 a2jmidid


exit
