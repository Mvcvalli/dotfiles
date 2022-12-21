# Exports
set fish_greeting
set -x EDITOR vim
set -x VISUAL vim
set -x MYVIMRC $HOME/.config/vim/.vimrc
set -x VIMINIT source $MYVIMRC 

# Manpager
set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# Prompt
function fish_prompt
	set_color red --bold
	printf "["
	set_color yellow
	printf "%s" "mason"
	set_color green
	printf "@"
	set_color blue
	printf "%s" "art"
	set_color magenta
	printf " %s" "$PWD"
	set_color red
	printf "] "
	set_color normal
end

# Automatically install fundle (package manager)
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Plugins
fundle plugin "edc/bass"
fundle plugin "jorgebucaran/autopair.fish"
fundle plugin "oh-my-fish/plugin-wifi-password"
fundle init

# Abbreviations
abbr clone "git clone --depth 1"
abbr m     "man"
abbr pdw   "pwd"
abbr cd..  "cd .."

# Aliases 
alias q="exit"
alias c="clear"
alias sudo="sudo"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias rr="rm -rf -vI"
alias sdn="shutdown -h now"

alias .h="cd $HOME"
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

alias g="git"
alias s="ncdu"
alias n="newsboat"
alias e="$EDITOR"
alias v="$EDITOR"

alias ls="exa -a --color=always --icons --group-directories-first"
alias ll="exa -la --color=always --icons --group-directories-first"
alias tree="exa -a --color=always --icons --group-directories-first -T"

alias show="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias update="~/.local/scripts/macOS/update.sh"
alias cleanup="~/.local/scripts/macOS/cleanup.sh"
alias ginstall="~/.local/scripts/macOS/git-install.sh"
alias izsh="~/.local/scripts/zsh/install.sh"
alias invim="~/.local/scripts/nvim/nvim-config-install.sh"
alias unvim="~/.local/scripts/nvim/uninstall-nvim.sh"
alias weather="curl http://wttr.in"
