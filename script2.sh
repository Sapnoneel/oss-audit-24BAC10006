#!/bin/bash
#Script 2: FOSS Package Inspector
#Author: Sapnoneel Barik
#Course: Open Source Software (Linux Administration)
#Description: Checks if a specified package is installed on the system,
#             displays its version and license information, and prints
#             a philosophy note about the package using a case statement.

#-- Package to inspect --
PACKAGE="vlc"   #Define the package name to check

#-- Check if the package is installed using rpm --
if rpm -q $PACKAGE &>/dev/null; then  #Check silently, redirect output to null
    echo "======================================="
    echo "  Package '$PACKAGE' is INSTALLED"
    echo "======================================="
    echo ""
    #Display version, license and summary using grep to filter rpm output
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    echo ""
else
    #If package is not found, print a not installed message
    echo "========================================"
    echo "  Package '$PACKAGE' is NOT installed"
    echo "========================================"
    echo "  Install it using: sudo dnf install $PACKAGE"
fi

echo ""
echo "==========================================="
echo "     Open Source Philosophy Note"
echo "==========================================="

#-- Case statement to print philosophy note based on package name --
case $PACKAGE in
    vlc)
        #Philosophy note for VLC Media Player
        echo "  VLC: Born in a university, shared with the world."
        echo "  A student project that became a 3-billion device"
        echo "  revolution - proof that open source outlasts"
        echo "  any proprietary alternative."
        ;;
    httpd)
        #Philosophy note for Apache HTTP Server
        echo "  Apache: The web server that built the open internet."
        echo "  Powers millions of websites freely and transparently."
        ;;
    mysql)
        #Philosophy note for MySQL
        echo "  MySQL: Open source at the heart of millions of apps."
        echo "  A dual-license story of community and commerce."
        ;;
    firefox)
        #Philosophy note for Firefox
        echo "  Firefox: A nonprofit fighting for an open web."
        echo "  Because the internet should belong to everyone."
        ;;
    *)
        #Default case for any other package
        echo "  $PACKAGE: An open-source tool contributing to"
        echo "  the ecosystem of free and shared software."
        ;;
esac

echo "==========================================="
