
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
