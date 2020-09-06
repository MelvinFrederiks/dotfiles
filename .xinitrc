#!/bin/sh

# Source xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

xbindkeys
exec i3
