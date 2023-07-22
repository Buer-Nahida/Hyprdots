<div align="justify">

<div align="center">

```ocaml
 ✨ Star Hyprland ✨
```

<p align="center">
  <img = src="https://img.shields.io/badge/OS-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=yelow"/>
	<img src="https://img.shields.io/badge/Style-CSS-blue?style=for-the-badg&logo=css3&logoColor=blue"/>
  <img src="https://img.shields.io/github/stars/SR-MyStar/Hyprdots?&style=for-the-badge&logoColor=red" />
  <img src="https://img.shields.io/github/forks/SR-MyStar/Hyprdots?style=for-the-badge" />
  <img src="https://img.shields.io/github/issues/SR-MyStar/Hyprdots?style=for-the-badge" />
  <img src='https://img.shields.io/github/license/SR-MyStar/Hyprdots?style=for-the-badge&logo=GNU&label=License&color=bd0000&logoColor=white'/>
</p>

# Gallery
![2023-07-20-07-21-46](https://github.com/SR-MyStar/Hyprdots/assets/139795416/6df727b3-c3c8-425c-aeb5-176a04143f6c)
![2023-07-20-07-23-00](https://github.com/SR-MyStar/Hyprdots/assets/139795416/4d68abb3-009a-449e-b1f9-c81248d38bc2)
![2023-07-20-07-23-51](https://github.com/SR-MyStar/Hyprdots/assets/139795416/8c327926-648d-476d-9acb-3b904c7e3535)
![2023-07-20-07-24-24](https://github.com/SR-MyStar/Hyprdots/assets/139795416/76742143-ad6e-4533-9f83-8ed66d47285d)

# Install

<details>
<summary><b>1. Install packages</b></summary>

```Bash
yay -S hyprland wlroots xdg-desktop-portal-hyprland xorg-xwayland \ 
        waybar-mpris-git waybar-hyprland-git \
        firefox \
        mpv mpvpaper \
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
        bottom \
        gtk-engine-murrine \
        gnome-themes-extra lib32-gnome-themes-extra \
```
</details>

<details>
<summary><b>2. Install fonts</b></summary>

```Bash
yay -S nerd-fonts-git
```

</details>

<details>
<summary><b>3. Install configure files</b></summary>

```Bash
cd ~
git clone https://github.com/SR-MyStar/Hyprdots.git .hyprdots
cd hyprdots
chmod +x ./install.sh
./install.sh
```
# Don't removed ~/.hyprdots directory!!!

</details>

<details>
<summary><b>4. Install themes</b></summary>
Install Tokyonight gtk theme
```Bash
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo mv themes/ /usr/share/themes/
cd ..
rm -rv Tokyo-Night-GTK-Theme
```
