# Dotfiles - wayland

## OS install

 * Arch sway
 * pacman -S swaylock swaybg swayidle rofi-wayland xclip i3blocks neovim stow keepassxc fd ripgrep


## clone the repo

```bash
git clone https://github.com/mattia46/dotfiless.git ~/dotfiles
```

## Install zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

```

* remove ~/.z*

## Install copy past wayland

```bash
sudo pacman -S wl-clipboard
```

## Apply dotfiles

```bash
cd ~/dotfiles
stow .
```

## Fonts

```bash
fc-cache -vf
fc-list # show list the new fonts, includes the ~/.fonts folder. Useful if linked from dotfiles

# firacode font
sudo pacman -S ttf-firacode-nerd

# throubleshooting
fc-list : family # shows all the family available
# use the family name in both alacritty.toml and sway/config pango

fc-match # shows the applied font

```

## CMD

```bash
pacman -Qtdq | sudo pacman -Rns - # remove orphan pkgs
```

## NVM

```bash
cd
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# make sure to clone in $HOME dir
```

## Syncthing

```bash
sudo pacman -S syncthing
sudo systemctl enable --now syncthing@user.service
# port 8384
```

## Docker

```bash
sudo pacman -S docker docker-compose
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
# logout and back in to apply
```
