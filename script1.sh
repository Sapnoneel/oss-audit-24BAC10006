#!/bin/bash
#Script 1: System Identity Report
#Author: Sapnoneel Barik
#Course: Open Source Software (Linux Administration)
#Description: Display system information as a welcome screen
#             including kernel version, user details, uptime,
#             distribution name, date/time, and OS license info.

# -- Variables --
STUDENT_NAME="Sapnoneel Barik"      #Student's full name
SOFTWARE_CHOICE="VLC Media Player"  #Chosen open-source software

# -- Gather system information using command substitution --
KERNEL=$(uname -r)               #Get current kernel version
USER_NAME=$(whoami)              #Get current logged-in username
HOME_DIR=$(echo $HOME)           #Get home directory of current user
UPTIME=$(uptime -p)              #Get human-readable system uptime
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
                                 #Extract distro name from os-release file
DATE_TIME=$(date '+%A, %d %B %Y %H:%M:%S')
                                 #Get current date and time formatted

# -- Display the system identity report --
echo "========================================"
echo "    Open Source Audit - $STUDENT_NAME"
echo "========================================"
echo ""
echo "   Software Choice : $SOFTWARE_CHOICE"
echo "   Distribution    : $DISTRO"
echo "   Kernel Version  : $KERNEL"
echo "   Logged-in User  : $USER_NAME"
echo "   Home Directory  : $HOME_DIR"
echo "   System Uptime   : $UPTIME"
echo "   Date and Time   : $DATE_TIME"
echo ""
echo "========================================"
echo "  OS License: GNU General Public License"
echo "  Fedora Linux is free and open-source,"
echo "  distributed under the GPL license."
echo "  Source: gnu.org/license/gpl.html"
echo "========================================"
