#!/bin/bash
cd ~

# making dnf faster
dnf_modification="max_parallel_downloads=10
defaultyes=True
keepcache=True"
echo "$dnf_modification" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
dnfinst dnf-automatic
sudo systemctl enable dnf-automatic.timer
printf "\n  DNF was made faster (probably, at least i tried...)"

# update
printf "\n--- upgrading dnf...\n"
sudo dnf upgrade --refresh --best --allowerasing -y
printf "\n--- upgrading flatpak...\n"
flatpak update -y
printf "\n--- clearing shit...\n"
sudo dnf autoremove
sudo dnf clean all
flatpak uninstall --unused -y

# adding repos
printf "\n--- adding flathub repo...\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
printf "\n--- adding RPM Fusion repo...\n"
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# dnf installations
alias dnfinst="sudo dnf install -y"
dnf_programs=(gnome-tweaks gnome-kra-ora-thumbnailer htop fastfetch powerline-fonts cmatrix gh)
for program in ${dnf_programs[@]}; do
  dnfinst $program
  echo --- $program is installed
done

dnf_drivers=("gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel")
dnfinst dnf_drivers

# flatpak installations
alias flatinst="flatpak install --noninteractive -y flathub"
flatpak_apps=(onlyoffice telegram mpv transmission heroic com.visualstudio.code krita foliate ExtensionManager io.mpv.Mpv)

for app in ${flatpak_apps[@]}; do
 printf "\n--- installing {$app}...\n"
 flatinst $app
 echo --- $app is installed
done

# onlyoffice
printf "\n--- installing onlyoffice...\n"
flatpak install --noninteractive -y flathub org.onlyoffice.desktopeditors

# telegram
printf "\n--- configuring telegram...\n"
sudo flatpak override --env=XCURSOR_SIZE=12 org.telegram.desktop
flatpak --user override --filesystem=/home/$USER/.icons/:ro org.telegram.desktop
flatpak --user override --filesystem=/usr/share/icons/:ro org.telegram.desktop

# vs code
flatpak install --noninteractive -y com.visualstudio.code

# github console tool
printf "\n--- installing github console tool...\n"
sudo dnf install gh

# transmission (torrent)
printf "\n--- installing torrent client...\n"
flatpak install --noninteractive -y flathub com.transmissionbt.Transmission

# krita
printf "\n--- installing krita...\n"
flatpak install --noninteractive -y flathub org.kde.krita

# foliate
printf "\n--- installing ebook-reader...\n"
flatpak install --noninteractive flathub com.github.johnfactotum.Foliate

# tweakers
printf "\n--- installing tweakers...\n"
sudo dnf install -y gnome-tweaks gnome-kra-ora-thumbnailer
# flatpak install --noninteractive -y flathub com.github.tchx84.Flatseal ????
flatpak install --noninteractive -y flathub com.mattjakeman.ExtensionManager

# terminal
printf "\n--- installing terminal stuff...\n"
sudo dnf install -y htop fastfetch powerline-fonts cmatrix

# synth-shell
printf "\n---making terminal beautiful...\n"
git clone --recursive https://github.com/andresgongora/synth-shell.git
cd synth-shell
./setup.sh
rm -rf synth-shell

# codecs
printf "\n--- installing codecs...\n"
flatpak install --noninteractive -y flathub io.mpv.Mpv
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia -y

# reducing pause after bash: command not found
file_path="/etc/PackageKit/CommandNotFound.conf"
if [ -f "$file_path" ]; then
    sudo sed -i '/^SoftwareSourceSearch=/s/true/false/' "$file_path"
    printf "\n  Pause after 'bash: command not found...' is removed.\n"
fi

# setting up
gsettings set org.gnome.mutter check-alive-timeout 60000
