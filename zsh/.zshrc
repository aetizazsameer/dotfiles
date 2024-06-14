export TERM=linux
export PS1='%F{168}%*%f %F{192}<%?>%f %F{159}%n@zmacp%f %F{221}[%1~]%f%F{231}>%f '
# export PS1='%F{cyan}%*%f %F{red}<%?>%f %F{yellow}%n@zcloud%f %F{green}[%1~]%f%F{white}>%f '
export ZSHRC='~/.zshrc'

alias ls='gls -aF --color=auto --group-directories-first'
alias ll='ls -l'
alias vsc=code
alias srczsh='source ~/.zshrc'
alias zzz='pmset sleepnow'

setopt hist_ignore_all_dups
