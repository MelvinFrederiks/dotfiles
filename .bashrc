#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
ESC=$(printf "\e")
PS1='[$ESC[1m$ESC[32m\u$ESC[39m$ESC[22m $ESC[33m\w$ESC[39m]\$ '

backlight(){
	brightnessctl -q s $1%
}

alias rm='trash'

quiet(){
	nohup $1 &> /dev/null &
}

export AUR='https://aur.archlinux.org/'

textemplate=$HOME/wiskunde/hw/template.tex

function vimtex() {
	if [ ! -f $1 ]; then cp $textemplate $1; fi
	vim $1
}

alias texc='latexmk -pdf -pvc'
#quiet latexmk -pdf -pvc $1

alias pdf='quiet evince'
alias browser='quiet waterfox-current'

pidof waterfox-current >/dev/null && echo "waterfox running" || browser

clear
# Setup here

feh --bg-scale $HOME/wp.jpg

neofetch
