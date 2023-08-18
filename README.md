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
![2023-07-20-07-21-46](https://github.com/SR-MyStar/Hyprdots/assets/139795416/6df727b3-c3c8-425c-aeb5-176a04143f6c)
![2023-07-20-07-23-00](https://github.com/SR-MyStar/Hyprdots/assets/139795416/4d68abb3-009a-449e-b1f9-c81248d38bc2)
![2023-07-20-07-23-51](https://github.com/SR-MyStar/Hyprdots/assets/139795416/8c327926-648d-476d-9acb-3b904c7e3535)
![2023-07-20-07-24-24](https://github.com/SR-MyStar/Hyprdots/assets/139795416/76742143-ad6e-4533-9f83-8ed66d47285d)
</div>

<div align="center">

# Install

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
        slurp        
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
yay -S catppuccin-cursors-mocha
```

## Install icon theme

```Bash
yay -S papirus-folders
```

## Apply themes

```Bash
~/.config/hypr/scripts/gtkthemes-bkp
```

</details>
