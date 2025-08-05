#!/usr/bin/bash

# Setup script for installing all the tools
TOOLS_DIR="tools"

# Read the users password
echo -n "Input the password: "
read -s password
echo ""

# Update the Kali
echo "${password}" | sudo -S apt update && sudo apt upgrade -y

# Install the programs from the Kali repository
echo "${password}" | sudo -S apt install -y golang git gowitness eyewitness metagoofil theharvester pandoc texlive

# Create the directory for the tools
cd ~
mkdir "${TOOLS_DIR}"
cd ~

# Check for pipx and install sherlock-project, nexfil
if apt list --installed | grep -i pipx; then
	pipx install sherlock-project nexfil
else
	echo "${password}" | sudo -S apt install -y pipx
	pipx install sherlock-project
fi

# Install whatsmyname
cd "~/${TOOLS_DIR}"
# Clone the repository
git clone https://github.com/bash-bunny/WhatsMyName.git && cd WhatsMyName
python -m venv venv
. venv/bin/activate
pip install -r requirements.txt
# Exit the environment
deactivate
# Go back to the $HOME directory
cd

# Install maigret
cd "~/${TOOLS_DIR}"
# Clone the repository and make the installation
git clone https://github.com/soxoj/maigret && cd maigret
python -m venv venv
. venv/bin/activate
pip3 install .
# Exit the environment
deactivate
# Go back to the $HOME directory
cd

# Install pymeta
cd "~/${TOOLS_DIR}"
# Clone the repository and make the installation
git clone https://github.com/m8sec/pymeta
cd pymeta
python -m venv venv
. venv/bin/activate
pip install -r requirements.txt
# Exit the environment
deactivate
# Go back to the $HOME directory
cd

# Golang tools
## Assetfinder
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/waybackurls@latest

# Personal scripts
cd ~/.local/bin
wget https://raw.githubusercontent.com/bash-bunny/dot/refs/heads/main/.local/bin/cheat
wget https://raw.githubusercontent.com/bash-bunny/Kali/refs/heads/main/crt_subs
cd

# Download the cheatsheets
cd ~/Desktop
wget https://raw.githubusercontent.com/bash-bunny/SummerCamp2025/refs/heads/main/Cheatsheets/LinuxCheatsheet.md
wget https://raw.githubusercontent.com/bash-bunny/SummerCamp2025/refs/heads/main/Cheatsheets/GoogleDorkCheatsheet.md
# Convert it to PDF
pandoc LinuxCheatsheet.md -o LinuxCheatsheet.pdf
pandoc GoogleDorkCheatsheet.md -o GoogleDorkCheatsheet.pdf

# Reboot
echo "Rebooting the machine..."
echo "${password}" | sudo -S reboot
