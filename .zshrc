source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh


# ########## THEME


# Bundles from the default repo (robbyrussell's oh-my-zsh).
# Tools
antigen bundle web-search
antigen bundle encode64
antigen bundle colorize
antigen bundle rsync
antigen bundle sublime
antigen bundle rupa/z
antigen bundle colored-man

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


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zdharma/fast-syntax-highlighting

# Load the theme.
antigen theme agnoster
# antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

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
