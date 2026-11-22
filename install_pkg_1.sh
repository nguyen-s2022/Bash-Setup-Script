#!/bin/bash

# Update & Upgrade
sudo apt update
sudo apt -y upgrade

# Install Basics
echo "Installing Basics"
sudo snap install brave
sudo apt install -y terminator
sudo snap install proton-pass
sudo snap install proton-mail
echo "Installed: terminator, proton pass, proton mail"
echo "Must do: Install Proton Drive manually"
echo "Must do: Login Proton Mail + Pass + Drive"
## Proton-drive

bash ./install_vscode_1_1.sh

# Install python venv and pip
sudo apt install -y python3-venv python3-pip

echo "Must do: Select VS Code compiler for c++"
echo "Must do: Starting platformio"
sudo apt install -y build-essential
sudo apt install -y g++
sudo apt install -y gpp

sudo apt-get install -y git-all
# Install arduino
echo "Installing Arduino"
printf '\n' | sudo add-apt-repository universe
printf '\n \n' | sudo snap install arduino
sudo usermod -aG dialout $USER
echo "Installed: Arduino"
# Install anaconda
echo "Must do: Install Anaconda manually"

# Install ROS2
# Set up system
sudo apt install -y software-properties-common
# printf '\n' | sudo add-apt-repository universe # Included with arduino

export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb

sudo apt install ros-dev-tools

# Install ROS2
sudo apt install ros-lyrical-desktop
source /opt/ros/lyrical/setup.bash


# Install FH Services
echo "Installing FH Services"
sudo snap install easyroam
echo "Installed: easyroam"
echo "Must do: Install Cisco manually"
## Cisco

# Install linux-tools
echo "Installing Linux Tools"
sudo apt install -y curl
sudo apt install -y fastfetch

sudo apt install -y gnome-shell-extension-manager
sudo apt install -y gnome-shell-extension-prefs chrome-gnome-shell
sudo apt install -y gnome-tweaks

sudo apt install -y openssh-server
sudo systemctl enable --now ssh
echo "Installed: curl, fastfetch, gnome-shell-extension-manager, gnome-shell-extension-prefs, chrome-gnome-shell, gnome-tweaks"


# Install language packages
echo "Installing language packages"
# German
sudo apt install -y language-pack-de mythes-de gnome-user-docs-de libreoffice-help-de libreoffice-l10n-de language-pack-gnome-de hyphen-de
# Vietnamese
sudo apt install -y language-pack-vi gnome-user-docs-vi hunspell-vi language-pack-gnome-vi libreoffice-help-vi libreoffice-l10n-vi 
# Extra
sudo apt install -y mythes-de-ch hunspell-de-ch-frami ibus-unikey hunspell-de-de-frami wngerman hunspell-de-at-frami wswiss wogerman
echo "Installed: German, Vietnamese"

echo "Must do: Select VS Code compiler for c++"
echo "Must do: Starting platformio"
# echo "Must do: Install Anaconda manually"
# echo "Must do: Install Cisco manually"
echo "Must do: Install Gnome-Extension: Tiling-Shell manually"


# Install advance tools
echo "Installing advance tools"
sudo snap install modelio
sudo snap install drawio
echo "Installed: modelio, drawio"

# Install LaTeX
echo "Installing TeXstudio & LaTeX-packages"
sudo apt install -y texstudio
sudo apt install -y textlive-latex-base textlive-latex-recommended textlive-latex-extra textlive-fonts-recommended
echo "Installed: modelio, drawio"

# Create alias
echo "Setting .bashrc"
echo "alias brave-main='brave --profile-directory="Default"'" >> ~/.bashrc
echo "alias brave-code='brave --profile-directory="Profile 1"'" >> ~/.bashrc
echo "gsettings reset org.gnome.desktop.input-sources xkb-options" >> ~/.bashrc
echo "Setting alias, gsettings"

# Settings 
# Reset Scroll-Lock problem
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de'), ('xkb', 'us'), ('xkb', 'gb'), ('xkb', 'vn')]"
gsettings reset org.gnome.desktop.input-sources xkb-options
# Set night-light
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3000
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 0.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 23.983333333333334
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# Install using files
cd SimulIDE_1.1.0-SR2_Lin64/
sudo apt install -y simulide
cd ..

# Install anaconda
printf '\n yes\n \n yes\n' | bash ./Anaconda3-2026.07-1-Linux-x86_64.sh
# ~/anaconda3/bin/conda init bash
source ~/.bashrc
conda install ipykernel -y
conda install numpy -y
conda install pandas -y
echo "Installed: Conda with ipykernel, numpy, pandas"
# Install cisco
sudo apt install -y ./cisco-secure-client-vpn_5.1.20.333_amd64.deb
echo "Installed: cisco"
# Install proton drive cli
mkdir -p ~/.local/bin
cp ./proton-drive ~/.local/bin/
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc 
echo "Installed: proton-drive-cli"

# arrange task bar
gsettings set org.gnome.shell favorite-apps ['brave_brave.desktop', 'org.gnome.Nautilus.desktop']

# cleaning up
sudo snap remove thunderbird


# echo "Must do: Install Proton Drive manually"
echo "Must do: Login Proton Mail + Pass + Drive"
