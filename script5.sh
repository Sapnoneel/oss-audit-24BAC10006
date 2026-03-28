#!/bin/bash
#Script 5: Open Source Manifesto Generator
#Author: Sapnoneel Barik
#Course: Open Source Software (Linux Administration)
#Description: Interactively asks the user three questions and generates
#             a personalized open source philosophy statement, then
#             saves it to a .txt file with the current date.

#-- Alias concept demonstrated via comment --
#In an interactive shell, you could define: alias manigen='./script5.sh'
#This would let you run the script simply by typing: manigen
#Aliases are shortcuts that map a custom command to a longer one.

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo "  Answer three questions to generate"
echo "  your personal open source manifesto."
echo "========================================"

#-- Read user input interactively --
read -p "  1. Name one open-source tool you use every day: " TOOL
                                  #Stores user's tool choice in TOOL variable
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
                                  #Stores user's freedom word in FREEDOM variable
read -p "  3. Name one thing you would build and share freely: " BUILD
                                  #Stores user's build idea in BUILD variable

#-- Get current date and logged-in username --
DATE=$(date '+%d %B %Y')      #Format date as day month year
USER_NAME=$(whoami)           #Get current username for filename

#-- Define output filename using username --
OUTPUT="manifesto_${USER_NAME}.txt"  #Personalised filename for each user

echo "============================================="
echo "   Generating your manifesto..."
echo "============================================="

#-- Build the manifesto using string concatenation and echo with >> --
#Using > to create/overwrite the file, then >> to append each line

echo "==============================================="  >> "$OUTPUT"
echo "   My Open Source Manifesto"                     >> "$OUTPUT"
echo "   Generated on $DATE"                           >> "$OUTPUT"
echo "   Author: $USER_NAME"                           >> "$OUTPUT"
echo "==============================================="   >> "$OUTPUT"
echo ""                                                 >> "$OUTPUT"

#-- Compose the manifesto paragraph using the user's three answers --
echo "  Every day, I rely on $TOOL - a tool built"        >> "$OUTPUT"
echo "  not for profit, but for people. To me, freedom"   >> "$OUTPUT"
echo "  in software means $FREEDOM. It means having"      >> "$OUTPUT"
echo "  the right to see, change, and share the tools"    >> "$OUTPUT"
echo "  that shape our digital lives ."                   >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  If I could build and share one thing freely,"     >> "$OUTPUT"
echo "  it would be $BUILD. Not because I have to,"       >> "$OUTPUT"
echo "  but because that is what open source taught me -" >> "$OUTPUT"
echo "  that knowledge grows when it is shared,"          >> "$OUTPUT"
echo "  and shrinks when it is locked away."              >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  I stand on the shoulders of giants."              >> "$OUTPUT"
echo "  My contribution is my way of"                     >> "$OUTPUT"
echo "  passing that forward."                            >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "================================================"  >> "$OUTPUT"

#--Confirm file was saved and displays it --
echo "  Manifesto saved to: $OUTPUT"
echo "================================================="
echo "          Your Manifesto"
echo "================================================="

#-- Display the saved manifesto using cat --
cat "$OUTPUT"                 #Print the saved  file to terminal
