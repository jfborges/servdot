# prompt 

autoload -U colors && colors    # Load colors
PROMPT="%(?:%{$fg_bold[white]%} ··• :%{$fg_bold[red]%}··• )%{$reset_color%}"
RPROMPT="%b%{$fg[white]%}[%{$fg[red]%}%B %~ %b%{$fg[white]%}]%b%{$reset_color%}"

# Default programs:
export EDITOR="vim"

# rootless docker 

export PATH=/home/pi/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export LESSHISTFILE="-"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export HISTFILE="${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh_history"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export WEECHAT_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/weechat"

# autocomplete
autoload -Uz promptinit
promptinit
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -i
_comp_options+=(globdots) # Include hidden files.

setopt extendedglob
#setopt autocd
cdpath=(/ $HOME/.config $HOME/.local)

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000

alias nv="nvim"
alias c="clear"
alias w="curl wttr.in/Lisbon"
alias v="vim"
alias h="cd ~/"
alias ka="killall"
alias mpd="mpd ~/.config/mpd/mpd.conf"
alias ncdu="ncdu --color off"

# Github aliases for .dotfiles
alias gits="git status"
alias gita="git add"
alias gitc="git commit -m"
alias gitp="git push -u origin main"
alias gitrm="git rm"

# change keyboard layout
alias kpt="setxkbmap macintosh_vndr/pt"
alias kgb="setxkbmap gb"

# other utilities
alias yt="youtube-viewer -7"
alias duck="ddgr"

# arch xrandr monitor setup 
alias monitors="xrandr --output DP1 --left-of eDP1 --auto"
alias monitor="xrandr --auto"


#Alias for NNN File Manager
alias nnn="nnn -HdeTv"
export NNN_PLUG='l:launch;o:fzopen;p:preview-tui'
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_BMS='d:~/Downloads;h:~/;t:/mnt/transcend/;l:~/localgroup/'
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# source zsh plugins 
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# lang utf
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
