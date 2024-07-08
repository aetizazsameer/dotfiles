# prefs
export TERM='xterm-256color'
export EDITOR='hx'
export LS_COLORS="$(vivid generate catppuccin-frappe)"
export TZ_LIST='PST8PDT,Seattle;UTC,Universal'
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# prompt
NEWLINE=$'\n'
PS1PREF="<%*, exit %?>"
PS1PREF="%(?.%F{192}${PS1PREF}%f.%F{168}${PS1PREF}%f)"
PS1SUF="%F{159}[%n@zmacp]%f %F{221}[%1~]%f%F{231}%(!.#.>)%f"
export PS1=" ${PS1PREF}${NEWLINE}${NEWLINE}${PS1SUF} "

# shortcuts
export ZSHRC='~/.zshrc'
export FF=~/Library/Application\ Support/Firefox/Profiles/default-release/chrome

# set flags
alias gls='gls -aF --color --group-directories-first'
alias ll='gls -l'
alias ls='if [[ $(gls -1U | wc -l) -gt 12 ]]; then gls; else ll; fi'
alias diff='/opt/homebrew/bin/diff -u --color'
alias diffy='/opt/homebrew/bin/diff --expand-tabs --width=$COLUMNS --side-by-side'
alias tz='tz -m -q'
alias fzf='fzf --height=50% --info=inline --border --margin=1 --padding=1'

# shortcuts
alias neo='clear && tz && neofetch'
alias vsc=code
alias srczsh='source ~/.zshrc'
alias zzz='pmset sleepnow'
alias :q='exit'

setopt hist_ignore_all_dups
# launch on startup
tz && neofetch
