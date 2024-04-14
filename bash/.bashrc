# Based on Kevin Wayne's .bashrc

# Set command prompt to show current directory.
if [ "$TERM" = "xterm-color" ] || [ "$TERM" = "xterm-256color" ]; then

    # Use color if terminal supports it.
    BLACK="\[$(tput setaf 0)\]"
    RED="\[$(tput setaf 1)\]"
    GREEN="\[$(tput setaf 2)\]"
    YELLOW="\[$(tput setaf 3)\]"
    BLUE="\[$(tput setaf 4)\]"
    MAGENTA="\[$(tput setaf 5)\]"
    CYAN="\[$(tput setaf 6)\]"
    WHITE="\[$(tput setaf 7)\]"
    DEFAULT="\[$(tput sgr0)\]"

    export PS1="${MAGENTA}\t ${CYAN}\u@\h ${YELLOW}[\w]${DEFAULT}> "
else
    export PS1="\t \u@\h [\w]> "
fi

# Establish a safe environment.
set -o ignoreeof         # Do not log out with <Ctrl-D>.
set -o noclobber         # Do not overwrite files via '>'.
alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.

# Use 'less' instead of 'more'.
# Windows Git Bash provides 'less', but not 'more'.
alias less='less --quit-at-eof --no-init --tabs=4 --RAW-CONTROL-CHARS'
alias more='less'

# Add colors and hidden files to 'ls'.
export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35"
alias ls='ls -GF -a --color=auto'

# Add color to 'grep' and relatives (when not piped or redirected).
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# When the shell exits, append to the history file instead of overwriting it.
shopt -s histappend

# Make the command-line history ignore duplicate command lines.
export HISTCONTROL=erasedups:ignoredups

# Make the command-line history show dates and times.
export HISTTIMEFORMAT="%F %T "

# Support non-ASCII characters in terminal.
# Note: use LC_ALL='C' if you want sort to behave in expected way.
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# Suppress OS X warning to change default shell to zsh.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Shortcut to neovim and bash config files
export INITLUA='~/.config/nvim/lua/init.lua'
export BASHRC='~/.bashrc'
export GLAZECONFIG='~/.glaze-wm/config.yaml'

# Set editor
export EDITOR=hx
