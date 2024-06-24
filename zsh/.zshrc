# prefs
export TERM='xterm-256color'
export EDITOR='hx'
export PS1='%F{168}%*%f %F{192}<%?>%f %F{159}%n@zmacp%f %F{221}[%1~]%f%F{231}>%f '
# export PS1='%F{cyan}%*%f %F{red}<%?>%f %F{yellow}%n@zcloud%f %F{green}[%1~]%f%F{white}>%f '
export TZ_LIST='PST8PDT,Seattle;UTC,Universal'
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# shortcuts
export ZSHRC='~/.zshrc'
export FF=~/Library/Application\ Support/Firefox/Profiles/default-release/chrome

# set flags
alias ls='gls -aF --color=auto --group-directories-first'
alias ll='ls -l'
alias diff='/opt/homebrew/bin/diff'
alias diffy='diff --expand-tabs --width=$COLUMNS --side-by-side'
alias diffc='diff -u --color'
alias tz='tz -m -q'
alias fzf='fzf --height=50% --info=inline --border --margin=1 --padding=1'

# shortcuts
alias vsc=code
alias srczsh='source ~/.zshrc'
alias zzz='pmset sleepnow'
alias :q='exit'

setopt hist_ignore_all_dups
tz && neofetch
