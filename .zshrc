# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "romkatv/powerlevel10k"
plug osx
plug sublime
plug command-not-found
# plug oh-my-zsh
plug web-search
plug encode64
plug colorize
plug rsync
plug colored-man-pages
plug thefuck
plug rupa/z
plug ssh-agent
plug git
plug git-flow
plug paulirish/git-open
plug pip
plug python
plug node
plug npm
plug yarn
plug lukechilds/zsh-nvm
plug scala
plug sbt
plug postgres
plug _docker
plug kube-ps1
plug dbz/kube-aliases
plug zsh-kubecolor
plug tmux
plug unixorn/fzf-zsh-plugin
plug joshskidmore/zsh-fzf-history-search
# plug b4b4r07/enhancd

###################################
POWERLEVEL9K_INSTALLATION_PATH="~/.antidote/bundles/bhilburn/powerlevel9k/"

POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_CUSTOM_KUBE_PS1='kube_ps1'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_kube_ps1 root_indicator background_jobs command_execution_time vcs ssh time)
POWERLEVEL9K_TIME_FOREGROUND='green'
POWERLEVEL9K_TIME_BACKGROUND='black'

#################################

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
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
HISTSIZE=10000
SAVEHIST=10000
setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Don;t overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Don\'t display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt histignorealldups 		# Substitute commands in the prompt

setopt extended_glob


# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
bindkey "^k" kill-line
bindkey "^d" delete-char
bindkey "^y" accept-and-hold
bindkey "^w" backward-kill-word
bindkey "^u" backward-kill-line
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^F" history-incremental-pattern-search-forward

#####################################################################

#################################### CUSTOM #################################

# functions
source ~/.functions
source ~/.extra

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

# Aliases
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias less="less -R"

# [ -f ~/..zsh ] && source ~/.fzf.zsh
eval $(thefuck --alias)

# gcloud
source /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc
source /opt/homebrew/share/google-cloud-sdk/path.zsh.inc

# aws
source /opt/homebrew/share/zsh/site-functions/aws_zsh_completer.sh

# exports
source ~/.exports

# kube_ps enable/disable
# kubeoff -g
# kubeon -g

eval "$(jenv init -)"

# Load and initialise completion system
autoload -Uz compinit
compinit
