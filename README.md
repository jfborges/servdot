# Dotfiles to quickly deploy configuration files to a server or container (ie Docker).

```
# for ubuntu based 
apt update && apt upgrade
apt install stow zsh fzf vim git tmux

# for arch based 
pacman -Syu
pacman -Sy stow zsh fzf vim git tmux

# set zsh as default shell
chsh -s $(which zsh)

git clone https://github.com/jfborges/servdot.git
cd servdot
stow -v *
```

---
20220401142608


