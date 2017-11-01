source /usr/local/share/antigen/antigen.zsh
ANTIGEN_CACHE=false

###################################
POWERLEVEL9K_INSTALLATION_PATH="~/.antigen/bundles/bhilburn/powerlevel9k/"

POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs root_indicator background_jobs command_execution_time history)

###################################

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# Tools
antigen bundle web-search
antigen bundle encode64
antigen bundle colorize
antigen bundle rsync
antigen bundle sublime
antigen bundle colored-man-pages

antigen bundle rupa/z

# System
antigen bundle command-not-found
antigen bundle brew
antigen bundle osx
antigen bundle ssh-agent
antigen bundle heroku

antigen bundle unixorn/autoupdate-antigen.zshplugin

# Programming
# git
antigen bundle git
antigen bundle git-extra
antigen bundle github

# python
antigen bundle pip
antigen bundle python

# ruby
antigen bundle gem
antigen bundle rvm

# node
antigen bundle cake
antigen bundle node
antigen bundle npm
antigen bundle coffee

# scala
antigen bundle scala
antigen bundle sbt

# misc
antigen bundle vagrant
antigen bundle postgres
antigen bundle docker
# antigen bundle sudo
antigen bundle tmux

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zdharma/fast-syntax-highlighting

# Load the theme.
# ########## THEME
# antigen theme agnoster
# antigen theme yahyavi/dotfiles themes/amfractal
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

############################# END OF ANTIGEN #########################

# =============================================================================
#                                   Options
# =============================================================================

# improved less option
export LESS="--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS"

# Watching other users
WATCHFMT="%n %a %l from %m at %t."
#watch=(notme)         # Report login/logout events for everybody except ourself.
LOGCHECK=60           # Time (seconds) between checks for login/logout activity.
REPORTTIME=5          # Display usage statistics for commands running > 5 sec.
#WORDCHARS="\"*?_-.[]~=/&;!#$%^(){}<>\""
WORDCHARS="\"*?_-[]~&;!#$%^(){}<>\""

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Don;t overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Don"t display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.

setopt extended_glob


# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
# bindkey "^a" beginning-of-line
# bindkey "^e" end-of-line
# bindkey "^f" forward-word
# bindkey "^b" backward-word
# bindkey "^k" kill-line
# bindkey "^d" delete-char
# bindkey "^y" accept-and-hold
# bindkey "^w" backward-kill-word
# bindkey "^u" backward-kill-line
# bindkey "^R" history-incremental-pattern-search-backward
# bindkey "^F" history-incremental-pattern-search-forward

#####################################################################

#################################### CUSTOM #################################

# functions
source ~/.functions

# Aliases
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook

export EDITOR=subl
# export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
# export SPARK_HOME=/Users/amir/Z/Work/2014-XSeer/Code/Misc/spark-2.2.0-bin-hadoop2.7
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(thefuck --alias)
