# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dineshgurumurthy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions history kubectl golang docker sublime)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias c=clear
alias k=clear
alias v=nvim
alias mg="mongo 192.168.1.2"
alias mkdir="mkdir -pv"
alias ..="cd .."
alias gcc='gcc-5'
alias g++='g++-5'
alias gr='go run'
alias code="open -a 'Visual Studio Code'"
alias sbl="open -a 'Sublime Text'"
alias pycharm="open -a 'PyCharm CE'"
alias l.='l -d .* '
alias l='ls -ltr'
alias gu='go get -u '
alias gd='git diff '
alias gs='git status'

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem


export CLICOLOR=1
export GOPATH=/Users/dineshgurumurthy/dev/go
export GOROOT=/usr/local/go
export PAGER="less -SF"
alias psqldev='psql -h scte-service-db-dev.fubo.tv -U scte_api_user scte_api'
alias psqlprod='psql -h scte-service-db-prod.fubo.tv -U scte_api_user scte_api'
alias playgo='cd ~/dev/go/src/github.com/dineshg13/go-play'
alias fgo='cd ~/dev/go/src/github.com/fubotv'




# added by Anaconda3 2.5.0 installer
export PATH="/Users/dineshgurumurthy/.gem/bin:/Users/dineshgurumurthy/anaconda/bin:/Users/dineshgurumurthy/dev/go/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dineshgurumurthy/dev/tools/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dineshgurumurthy/dev/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dineshgurumurthy/dev/tools/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dineshgurumurthy/dev/tools/google-cloud-sdk/completion.zsh.inc'; fi
source ~/gcloud.sh


export DEFAULT_USER=dineshgurumurthy
prompt_context(){}
source <(kubectl completion zsh)
