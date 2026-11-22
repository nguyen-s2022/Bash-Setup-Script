# Setting up default applicaton
gsettings set org.gnome.desktop.default-applications.terminal exec "terminator"
xdg-settings set default-web-browser brave_brave.desktop

# Backup taskbar, folders(layout), layout
echo "Default taskbar / favorites" >> backup_settings.txt
echo "gsettings get org.gnome.shell favorite-apps" >> backup_settings.txt
gsettings get org.gnome.shell favorite-apps >> backup_settings.txt
echo "" >> backup_settings.txt

echo "Default folders" >> backup_settings.txt
echo "gsettings get org.gnome.desktop.app-folders folder-children" >> backup_settings.txt
gsettings get org.gnome.desktop.app-folders folder-children >> backup_settings.txt
echo "" >> backup_settings.txt

echo "Default layout" >> backup_settings.txt
echo "gsettings get org.gnome.shell app-picker-layout" >> backup_settings.txt
gsettings get org.gnome.shell app-picker-layout >> backup_settings.txt
echo "" >> backup_settings.txt


# Setting up taskbar / favorites
gsettings set org.gnome.shell favorite-apps "['brave_brave.desktop', 'org.gnome.Nautilus.desktop']"

# Setting up layout
gsettings set org.gnome.desktop.app-folders folder-children "['System', 'Utilities', 'YaST', 'Pardus', 'Settings', 'Viewers', 'Camera', 'LibreOffice', 'Arduino', 'Gnome+', 'FH_Services']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Settings/ name "'Settings'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Settings/ apps "['org.gnome.Settings.desktop', 'update-manager.desktop', 'firmware-updater_firmware-updater.desktop', 'gnome-language-selector.desktop', 'org.gnome.Characters.desktop', 'desktop-security-center_desktop-security-center.desktop', 'nvidia-settings.desktop']"


gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Viewers/ name "'Viewers'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Viewers/ apps "['org.gnome.Showtime.desktop', 'org.gnome.Shotwell.desktop', 'org.gnome.Rhythmbox3.desktop']"


gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Camera/ name "'Camera'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Camera/ apps "['org.gnome.Snapshot.desktop', 'simple-scan.desktop']"


gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/LibreOffice/ name "'LibreOffice'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/LibreOffice/ apps "['libreoffice-startcenter.desktop', 'libreoffice-calc.desktop', 'libreoffice-writer.desktop', 'libreoffice-math.desktop', 'libreoffice-draw.desktop', 'libreoffice-impress.desktop']"


gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Arduino/ name "'Arduino'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/"Gnome+"/ apps "['arduino.desktop', 'net.launchpad.code.simulide.desktop']
"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/"Gnome+"/ name "'Gnome+'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/"Gnome+"/ apps "['com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Extensions.desktop', 'org.gnome.tweaks.desktop']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/FH_Services/ name "'FH Services'"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/FH_Services/ apps "['com.cisco.secureclient.gui.desktop', 'easyroam_easyroam.desktop']"


gsettings set org.gnome.shell app-picker-layout "[{'org.gnome.Calculator.desktop': <{'position': <0>}>, 'org.gnome.Calendar.desktop': <{'position': <1>}>, 'org.gnome.clocks.desktop': <{'position': <2>}>, 'Settings': <{'position': <3>}>, 'Viewers': <{'position': <4>}>, 'Camera': <{'position': <5>}>, 'Utilities': <{'position': <6>}>, 'System': <{'position': <7>}>, 'org.gnome.Yelp.desktop': <{'position': <8>}>, 'org.remmina.Remmina.desktop': <{'position': <9>}>, 'net.nokyan.Resources.desktop': <{'position': <10>}>, 'transmission-gtk.desktop': <{'position': <11>}>, 'snap-store_snap-store.desktop': <{'position': <12>}>, 'firefox_firefox.desktop': <{'position': <13>}>}, {'LibreOffice': <{'position': <0>}>, 'Arduino': <{'position': <1>}>, 'org.gnome.Ptyxis.desktop': <{'position': <2>}>, 'terminator.desktop': <{'position': <3>}>, 'code_code.desktop': <{'position': <4>}>, 'org.gnome.TextEditor.desktop': <{'position': <5>}>, 'proton-pass_proton-pass.desktop': <{'position': <6>}>, 'proton-mail_proton-mail.desktop': <{'position': <7>}>, 'Gnome+': <{'position': <8>}>, 'FH_Services': <{'position': <9>}>}]"

## Add modelio, drawio, textstudio
## Setup libreoffice user profile
