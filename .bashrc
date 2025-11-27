set -o vi

[[ $- != *i* ]] && return

# Install myfetch first, then uncomment this line:
 clear && myfetch -c 8 -C " █"

alias ls='lsd --color=auto'
alias grep='grep --color=auto'
alias find='fd'

PS1='\[$(cat ~/.cache/wal/sequences)\]╭─[\[\033[1;31m\]\[\033[0m\] \[\033[1;36m\]\u\[\033[1;33m\]@\[\033[1;35m\]\h\[\033[0m\]] \[\033[1;34m\] \w\[\033[0m\] \[\033[1;32m\] \A\[\033[0m\]\n\[$(cat ~/.cache/wal/sequences)\]╰─\[\033[1;31m\]\u@\h\[\033[0m\] '

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors.sh 2>/dev/null

alias fucking='sudo'
alias pls='sudo !!'
alias yeet='rm -rf'
alias vibe='mpv --no-video --shuffle'
alias hack='cmatrix -b'
alias plz='pkill -9'
alias shred='shred -v -n 7 -z -u'
alias flex='neofetch --ascii_distro arch'
alias dominate='chmod 777'
alias ghost='killall -9'

alias doom='chocolate-doom'
alias quake='quakespasm'
alias mine='minecraft-launcher'

alias matrix='cmatrix -b -C cyan'
alias snoop='nmap -sS'
alias spy='wget --mirror --convert-links --adjust-extension --page-requisites --no-parent'

export EDITOR='vim'
export BROWSER='firefox'
export TERMINAL='kitty'

export PATH=$PATH:/home/wojtek/.spicetify

# Created by `pipx` on 2025-11-27 17:36:37
export PATH="$PATH:/home/wojtek/.local/bin"
