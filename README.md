# Dotfiles - wayland

## OS install

 * only system utility - no DE
 * SID source-list
 * apt install kitty git wofi firefox-esr pipewire wireplumber swaybg stow
 * apt install nvim tldr xclip make 

## Install Window manager

```bash

sudo apt install hyprland
```

## clone the repo

```bash
git clone https://github.com/mattia46/dotfiles.git ~/dotfiles
```

## Install zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

```

* remove ~/.z*


## Apply dotfiles

```bash
cd ~/dotfiles
stow .
```





