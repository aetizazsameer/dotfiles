# prefs
export TERM='xterm-256color'
export EDITOR='hx'
export LS_COLORS="$(vivid generate catppuccin-frappe)"
export TZ_LIST='PST8PDT,Seattle;UTC,Universal'
export BAT_THEME="TwoDark"
export FZF_DEFAULT_COMMAND='rg --files --hidden'
source <(fzf --zsh)

# prompt
NEWLINE=$'\n'
PS1PREF="<%*, exit %?>"
PS1PREF="%(?.%F{192}${PS1PREF}%f.%F{168}${PS1PREF}%f)"
PS1SUF="%F{159}[%n@zmacp]%f %F{221}[%1~]%f%F{231}%(!.#.>)%f"
# PS1PREF="%(?.%F{green}${PS1PREF}%f.%F{red}${PS1PREF}%f)"
# PS1SUF="%F{blue}[%n@zcloud]%f %F{yellow}[%1~]%f%F{white}%(!.#.>)%f"
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
alias fzf='fzf -m --height=50% --info=inline --border --preview="bat --color=always --style="numbers,changes,header" --line-range=:499 {}"'

# shortcuts
alias vsc=code
alias srczsh='source ~/.zshrc'
alias zzz='pmset sleepnow'
alias :q='exit'

setopt hist_ignore_all_dups
# launch on startup
tz
