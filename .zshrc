# Load pywal colorscheme
#(cat ~/.cache/wal/sequences &)

# Stuff for autocompletion
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at%p%s

autoload -Uz compinit
compinit

# Stuff for persistent command history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

PATH="$PATH:/home/april/.bin"

export PROMPT="%F{81}[%f%F{217}%n%f%F{231}@%f%F{217}%m%f%F{81}]%f %F{161}→%f %F{132}%~%f %F{25}→>%f "

alias ls="ls --color=auto"

alias knife=sudo

function screensaver() {
	while true; do
		sl;
	done;
}

function hyprwal(){
	wal -i $1
	hyprctl hyprpaper preload $(realpath $1)
	hyprctl hyprpaper wallpaper DP-1,$(realpath $1)
}

alias pridecat="queercat -b -v 0.5 -h 0.5"
alias transcat="queercat -b -f 1 -v 0.45 -h 0.45"

alias transfetch="neofetch --ascii ~/transcii --ascii_colors 81 217 231"

alias dots='/usr/bin/git --git-dir=/home/april/.cfg/ --work-tree=/home/april'
