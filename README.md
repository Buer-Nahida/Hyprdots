<div align="justify">

<div align="center">

```ocaml
 ✨ Star Hyprland ✨
```

<p align="center">
  <img src="https://img.shields.io/badge/OS-Arch-f7768e?style=for-the-badge&logo=archlinux&logoColor=f7768e"/>
  <img src="https://img.shields.io/badge/Style-SHELL-9ece6a?style=for-the-badge&logo=gnubash&logoColor=9ece6a"/>
  <img src="https://img.shields.io/github/stars/SR-MyStar/Hyprdots?style=for-the-badge&logo=apachespark&logoColor=e0af68&color=e0af68" />
  <img src="https://img.shields.io/github/forks/SR-MyStar/Hyprdots?style=for-the-badge&logo=git&logoColor=7aa2f7&color=7aa2f7" />
  <img src="https://img.shields.io/github/issues/SR-MyStar/Hyprdots?style=for-the-badge&logo=cachet&logoColor=bb9af7&color=bb9af7" />
  <img src='https://img.shields.io/github/license/SR-MyStar/Hyprdots?style=for-the-badge&logo=GNU&label=License&color=7dcfff&logoColor=7dcfff'/>
</p>

# Gallery
![2023-08-19-05-35-02-full](https://github.com/SR-MyStar/Hyprdots/assets/139795416/d274043e-db40-4aa5-b6a4-1357b47f097d)
![2023-08-19-05-36-05-full](https://github.com/SR-MyStar/Hyprdots/assets/139795416/6fa1ba3b-febf-4a97-bfbb-bdd454ef914b)
![2023-08-19-05-36-27-full](https://github.com/SR-MyStar/Hyprdots/assets/139795416/8ef37ba7-ccb1-4193-ae1e-14b2500c1628)
![2023-08-19-05-36-35-full](https://github.com/SR-MyStar/Hyprdots/assets/139795416/109aa220-785f-4fec-b7e8-b1e6c67ef073)
![2023-08-19-05-37-22-full](https://github.com/SR-MyStar/Hyprdots/assets/139795416/9632b378-f866-4181-887a-150614d580c9)
</div>

<div align="center">

# Install
<p align="center">
  <img src="https://img.shields.io/badge/-WARING!!!-f7768e?style=for-the-badge&logoColor=f7768e"/>
  <img src="https://img.shields.io/badge/-If you installed main1.0 version dot,must remove all old's configs!!!-f7768e?style=for-the-badge&logoColor=f7768e"/>
</p>

</div>

<details>
<summary><b>1. Install packages</b></summary>

```Bash
yay -S hyprland wlroots xdg-desktop-portal-hyprland xorg-xwayland \ 
        waybar-mpris-git waybar-hyprland-cava-git hyprpicker \
        firefox \
        mpv mpvpaper swww \
        wf-recorder \
        zsh \
        wezterm \
        wlogout \
        dunst \
        fcitx5 \
        xfce-polkit \
        cava \
        python rust \
        grim slurp \
        jq \
        wl-clipboard \
        rofi \
        lolcat \
        nemo \
        fortune-mod fortune-mod-zh \
        lib32-pipewire lib32-pipewire-jack lib32-pipewire-v4l2 pipewire pipewire-alsa pipewire-docs pipewire-jack pipewire-pulse pipewire-roc pipewire-x11-bell pipewire-zeroconf \
        highlight \
        exa \
        vim \
        cowsay \
        neofetch \
        light \
        libnotify \
        bottom btop \
        gtk-engine-murrine \
        gnome-themes-extra lib32-gnome-themes-extra \
        crow-translate \
        python python3 \
        catppuccin-mocha-dark-cursors \
        mpd ncmpcpp \
        slurp \
        cliphist \
        wget aria2 curl
```
</details>

<details>
<summary><b>2. Install nerd-fonts</b></summary>

```Bash
yay -S nerd-fonts-git
```

</details>

<details>
<summary><b>3. Install Hyprdots</b></summary>

```Bash
cd ~
git clone https://github.com/SR-MyStar/Hyprdots.git .hyprdots
cd .hyprdots
chmod +x ./install.sh
./install.sh
```

<div align="center">

# Don't removed ~/.hyprdots directory!!!

</div>

</details>

<details>
<summary><b>4. Install & Apply themes</b></summary>

## Install Tokyonight gtk theme

```Bash
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo mv themes/ /usr/share/themes/
cd ..
rm -rv Tokyo-Night-GTK-Theme
```

## Install Cursor theme

```Bash
wget https://github.com/TeddyBearKilla/Afterglow-Cursors-Recolored/releases/download/Catppuccin/Afterglow-Recolored-Catppuccin-Blue-v3.tar.gz
sudo mv Afterglow-Recolored-Catppuccin-Blue-v3 /usr/share/icons/Afterglow-Recolored-Catppuccin-Blue-v2
```

> **Warning**
> 
> Cursor directory name is very important!!!
> Because `gtkthemes-bkp` script is using cursor directory name to apply cursor theme!!!
> Hyprland is using cursor directory name to apply cursor theme too!!!
> So you must rename `Afterglow-Recolored-Catppuccin-Blue-v3` 到 `Afterglow-Recolored-Catppuccin-Blue-v2`。

## Install icon theme

```Bash
yay -S papirus-folders
```

## Apply themes

```Bash
~/.config/hypr/scripts/gtkthemes-bkp
```

</details>
