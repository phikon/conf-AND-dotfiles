#
# ~/.zshrc
# author: phikon
# phikon[DOT]coding[AT]gmail[DOT]com
#

## options ##
autoload -U compinit colors
compinit
colors

setopt auto_cd rm_star_wait nomatch notify
unsetopt beep

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

## aliases ##
alias reload='source ~/.zshrc'
alias unilog='ssh a*******@almighty.cs.univie.ac.at'
alias backup='rsync -a'
alias feierabend='sudo systemctl poweroff'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'

alias la='ls -a'
alias ld='ls -d'
alias lla='ls -la'

## prompt ##
local USER='%{$fg[green]%}%n%{$reset_color%}'
local HOST='%{$fg[cyan]%}%m%{$reset_color%}'
local DIR='%{$fg_bold[blue]%}%~/%{$reset_color%}'
local ARROW='%{$fg_bold[yellow]%}?%{$reset_color%}'
local ERROR='%{$fg[red]%}%(?..?)%{$reset_color%}'

PROMPT="[$USER@$HOST: $DIR]$prompt_newline$ARROW "
RPROMPT="$ERROR "

## Fish-like Syntax-Highlighting ##
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh