# OSS Audit - VLC Media Player

**Student Name:** Sapnoneel Barik
**Roll Number:** 24BAC10006
**Course:** Open Source Software (Linux Administration)
**Choosen Software:** VLC Media Player

---

## About This Project
This repository contains five shell scripts written as part of the
Open Source Software capstone project. The scripts demonstrates
practical Linux skills and connects to the audit of VLC Media Player.

---

## Scripts

### Script 1 - System Identity Report
Displays system information including kernel version, logged-in user,
uptime, distribution name, date/time, and OS license information.

**Run:**
```bash
chmod +x script1.sh
./script1.sh
```

### Script 2 - FOSS Package Inspector
Checks if VLC is installed, displays version and license info,
and prints a philosophy note using a case statement.

**Run:**
```bash
chmod +x script2.sh
./script2.sh
```

### Script 3 - Disk and Permission Auditor
Loops through key system directories and reports permissions,
owner, and disk usage. Also checks VLC's config directory.

**Run:**
```bash
chmod +x script3.sh
./script3.sh
```

### Script 4 - Log File Analyzer
Reads a log file line by line, counts keyword occurances,
and displays the last 5 matching lines.

**Run:**
```bash
chmod +x script4.sh
./script4.sh
```

### Script 5 - Open Source Manifesto
Interactively asks three questions and generates a personalized
open source philosophy statement saved to a .txt file.

**Run:**
```bash
chmod +x script5.sh
./script5.sh
```

--------------------------------------------------------------------------------

## Dependencies

• Fedora Linux 43 (or any RPM-based Linux distribution)
• VLC Media Player (install via: sudo dnf install vlc)
• RPM Fusion repository enabled
• Bash shell
