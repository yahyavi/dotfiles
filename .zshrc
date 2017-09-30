ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="kphoen"
# ZSH_THEME="agnoster"
ZSH_THEME="amfractal"


export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"

plugins=(brew cake colorize coffee web-search encode64 gem git osx rvm sublime github node npm vagrant colored-man ssh-agent sbt python postgres pip rsync scala docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=subl
# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
eval "$(thefuck --alias)" # adding the fuck for fixing errors in commandline

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
# export SPARK_HOME=/Users/amir/Z/Work/2014-XSeer/Code/Misc/spark-2.2.0-bin-hadoop2.7

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
