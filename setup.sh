# Install packages
bash -c 'sudo pacman -Syu xmonad xmonad-contrib alacritty xterm wget dmenu xf86-input-libinput xmobar neofetch htop ncdu vim nano xorg xorg-xinit p7zip flameshot pulseaudio-alsa pulseaudio-bluetooth pamixer tlp youtube-dl ranger cmus nitrogen firefox krita xdotool gimp mpv vlc audacity discord libreoffice-still ttc-iosevka ttc-iosevka-aile ttc-iosevka-curly ttf-bitstream-vera ttf-font ttf-nerd-fonts-symbols-1000-em-mono retroarch pcsx2 pychess kdenlive deepin-calculator code blueman obs-studio calibre qbittorrent spotifyd nemo bc alsa-utils dunst rustup python gcc rustup screenkey slop steam xf86-video-intel mesa lib32-mesa ttf-liberation wqy-zenhei lib32-systemd'
bash -c 'yay -S --mflags --skipinteg --answerclean All --answerdiff All --answeredit All --answerupgrade Repo ani-cli chocolate-doom tlpui-git spotify picom-jonaburg-git github-desktop-bin mirage libinput-gestures sublime-text-4 bashmount spotify-tui eww ttf-ms-win11-auto'

# Move configs and files to directories
bash -c 'mkdir ~/.xmonad && cp xmonad.hs ~/.xmonad/'
bash -c 'mkdir ~/.xmobarrc && cp xmobar.hs ~/.xmobarrc/'
bash -c 'mkdir -p ~/.config/alacritty && cp config/alacritty.yml ~/.config/alacritty/'
bash -c 'mkdir -p ~/.config/xmonad/scripts && cp files/help ~/.config/xmonad/'
bash -c 'mkdir ~/.config/picom && cp config/picom.conf ~/.config/picom/'
bash -c 'mkdir ~/.config/neofetch && cp config/neofetch_config.conf ~/.config/neofetch/config.conf && cp files/archlinux.txt ~/.config/neofetch/'
bash -c 'cp bashrc ~/.bashrc'
bash -c 'mkdir ~/.config/dunst && cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc'
bash -c 'mkdir -p ~/.config/xmonad/scripts && cp config/shell/startup_window.sh ~/.config/xmonad/scripts/' 
bash -c 'mkdir ~/Scripts && cp config/shell/battery_notifs.sh ~/Scripts'
bash -c 'cp -r config/ranger/ ~/.config/'

# Add execution permissions to shell scripts
bash -c 'chmod +x ~/.config/xmonad/scripts/startup_window.sh && chmod +x ~/Scripts/battery_notifs.sh'
