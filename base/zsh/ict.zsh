export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export EDITOR="vim"

setopt interactivecomments
setopt cdablevars
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_ALLOW_CLOBBER
setopt SH_WORD_SPLIT
setopt nohup
setopt INC_APPEND_HISTORY SHARE_HISTORY
unsetopt menucomplete
setopt longlistjobs
unsetopt beep extendedglob
unsetopt bgnice
bindkey -e

alias ls='ls -h --color=auto --group-directories-first'
alias l='ls'
alias ll='ls -lh'
alias lla='ls -alh'
alias lt='ls -h --color=auto --sort=time'
alias grep='grep --color=auto'
alias e='exit'
alias ..='cd ..'
alias pacman='sudo pacman'
alias vncon='vncserver -geometry 1024x768 -depth 16'
alias vncoff='vncserver -kill :1'
alias mc='env LANG=en_US.utf8 mc'

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey '^[[5~' history-beginning-search-backward
bindkey '^[[6~' history-beginning-search-forward
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del

function mkcd()
{
    mkdir -p "$1" && cd "$1"
}

function s() 
{ 
    tmux -2 attach -t work || tmux -2 new -s work 
}

function makepdf()
{
	a2ps "$1" -o "$1.ps" -M A4dj -T 4 --columns=1 --margin=5 -r -l 150
	ps2pdf -sPAPERSIZE=a4 "$1.ps" "$1.pdf"
	rm -f "$1.ps"
}
