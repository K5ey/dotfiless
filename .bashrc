set -o vi

[[ $- != *i* ]] && return

 clear && myfetch -c 8 -C " █"

alias ls='lsd --color=auto'
alias grep='grep --color=auto'
alias find='fd'

PS1='\[$(cat ~/.cache/wal/sequences)\]╭─[\[\033[1;31m\]\[\033[0m\] \[\033[1;36m\]\u\[\033[1;33m\]@\[\033[1;35m\]\h\[\033[0m\]] \[\033[1;34m\] \w\[\033[0m\] \[\033[1;32m\] \A\[\033[0m\]\n\[$(cat ~/.cache/wal/sequences)\]╰─\[\033[1;31m\]\u@\h\[\033[0m\] '

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors.sh 2>/dev/null

export EDITOR='micro'
export BROWSER='firefox'
export TERMINAL='kitty'

export PATH=$PATH:/home/wojtek/.spicetify

# Created by `pipx` on 2025-11-27 17:36:37
export PATH="$PATH:/home/wojtek/.local/bin"

export PATH=$PATH:/home/wojtii/.spicetify
xi() { sudo pacman -S "$@"; }          # Install package
xy() { sudo pacman -Sy "$@"; }         # Refresh & install
xyu() { sudo pacman -Syu "$@"; }       # Full system update
xU() { sudo pacman -U "$@"; }          # Install local package
xr() { sudo pacman -R "$@"; }          # Remove package
xrs() { sudo pacman -Rs "$@"; }        # Remove + dependencies
xrns() { sudo pacman -Rns "$@"; }      # Remove + deps + configs
xrd() { sudo pacman -Rdd "$@"; }       # Force remove
xs() { pacman -Ss "$@"; }              # Search repos
xq() { pacman -Qs "$@"; }              # Search installed
xqi() { pacman -Qi "$@"; }             # Package info
xql() { pacman -Ql "$@"; }             # List package files
xQ() { pacman -Q "$@"; }               # Query installed
xQe() { pacman -Qe "$@"; }             # List explicitly installed
xQm() { pacman -Qm "$@"; }             # List foreign (AUR)
xQdt() { pacman -Qdt "$@"; }           # List orphans
xcc() { sudo pacman -Scc "$@"; }       # Clean cache
xsc() { sudo pacman -Sc "$@"; }        # Clean old cache
xkk() { sudo pacman -D --asexplicit "$@"; } # Mark as explicit
xoo() { sudo pacman -D --asdeps "$@"; }     # Mark as dependency
