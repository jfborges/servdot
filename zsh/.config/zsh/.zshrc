# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="qutebrowser"

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
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export WEECHAT_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/weechat"

autoload -U compinit
compinit -i

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
alias gitp="git push -u origin master"
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

# date alias
#alias date="date -u +"%Y%m%d%H%M:%Z""

# make macos use the correct python path (brew)
#alias python=/usr/local/bin/python3

#Alias for NNN File Manager
alias nnn="nnn -HdeTv"
export NNN_PLUG='l:launch;o:fzopen;p:preview-tui'
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_BMS='d:~/Downloads;h:~/;t:/mnt/transcend/;l:~/localgroup/'
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# source zsh plugins 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# lang utf
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
