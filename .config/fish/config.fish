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

# Colors
set -U fish_color_normal normal
set -U fish_color_command
set -U fish_color_quote
set -U fish_color_redirection
set -U fish_color_end
set -U fish_color_error
set -U fish_color_param
set -U fish_color_comment
set -U fish_color_match
set -U fish_color_selection --reverse
set -U fish_color_search_match --reverse
set -U fish_color_history_current
set -U fish_color_operator
set -U fish_color_escape
set -U fish_color_cwd normal
set -U fish_color_cwd_root normal
set -U fish_color_valid_path
set -U fish_color_autosuggestion brblack
set -U fish_color_user normal
set -U fish_color_host normal
set -U fish_color_cancel
set -U fish_pager_color_prefix --underline
set -U fish_pager_color_progress brblack
set -U fish_pager_color_completion normal
set -U fish_pager_color_description brblack
set -U fish_pager_color_selected_background --reverse

# Automatically install fundle (package manager)
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Plugins
fundle plugin "edc/bass"
fundle plugin "jorgebucaran/autopair.fish"
fundle init

# Abbreviations
abbr clone "git clone --depth 1"
abbr m     "man"
abbr pdw   "pwd"
abbr cd..  "cd .."

# Aliases 
alias q="exit"
alias c="clear"
alias rr="rm -rf"

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
alias invim="~/.local/scripts/nvim/nvim-config-install.sh"
alias unvim="~/.local/scripts/nvim/uninstall-nvim.sh"
alias weather="curl http://wttr.in"
