#!/bin/bash
#Script 3: Disk and Permission Auditor
#Author: Sapnoneel Barik
#Course: Open Source Software (Linux Administration)
#Description: Loops through a list of important system directories
#             and reports the permissions, owner, and disk usage
#             of each. Also checks VLC's config directory specifically.

#-- List of important system directories to audit --
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "   Directory Audit Report"
echo "======================================="
echo ""

#-- For loop to iterate through each directory --
for DIR in "${DIRS[@]}"; do     #Loop through each directory in the array

    if [ -d "$DIR" ]; then      #Checks if the directory exists
        #Extract permissions, owner and group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        #Get human-readable directory size, suppress error messages
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo " Directory  : $DIR"
        echo " Permission : $PERMS"
        echo " Size       : $SIZE"
        echo "-------------------------------------"
    else
        #If directory does not exist on this system
        echo " $DIR does not exist on this system"
        echo "-------------------------------------"
    fi

done

echo ""
echo "======================================"
echo "   VLC Configuration Directory"
echo "======================================"
echo ""

#-- Check VLC's user config directory specifically --
VLC_CONFIG="$HOME/.config/vlc"   #VLC stores user config in home directory

if [ -d "$VLC_CONFIG" ]; then    #Check if VLC config directory exists
    #Show permissions and owner of VLC config directory
    VLC_PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
    VLC_SIZE=$(du -sh "$VLC_CONFIG" 2>/dev/null | cut -f1)
    echo " VLC Config Found : $VLC_CONFIG"
    echo " Permissions      : $VLC_PERMS"
    echo " Size             : $VLC_SIZE"
else
    #VLC config directory does not exist yet - created on first launch
    echo " VLC config directory not at $VLC_CONFIG"
    echo " This directory is created automatically"
    echo " when VLC is launched for the first time."
fi

echo ""
echo "=========================================="
