#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
ESC=$(printf "\e")
PS1='[$ESC[1m$ESC[32m\u$ESC[39m$ESC[22m $ESC[33m\w$ESC[39m]\$ '

alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'


backlight(){
	brightnessctl -q s $1%
}

alias rm='trash'
alias cloneterm='quiet alacritty'

quiet(){
	nohup $1 &> /dev/null &
}

export AUR='https://aur.archlinux.org/'

textemplate=$HOME/wiskunde/hw/template.tex

function vimtex() {
	if [ ! -f $1 ]; then cp $textemplate $1; fi
	vim $1
}

alias texc='latexmk -pdf -pvc -shell-escape'

alias pdf='quiet sioyek'
alias browser='quiet waterfox-g3'

pidof waterfox-g3 >/dev/null && echo "waterfox running" || browser

clear
# Setup here

feh --bg-scale $HOME/wp.jpg

neofetch
