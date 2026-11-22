# EXTRA LATER
# Install fonts
echo "Installing fonts"
printf '\t \n' | sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v
echo "Instaled MS Fonts"
