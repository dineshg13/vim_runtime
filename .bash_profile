alias l='ls -ltr'
alias c=clear
alias v=nvim
alias mg="mongo 192.168.1.2"
alias mkdir="mkdir -pv"
alias ..="cd .."
alias gcc='gcc-5'
alias g++='g++-5'
alias gc='git clone '
alias gr='go run'
alias code="open -a 'Visual Studio Code'"
alias pycharm="open -a 'PyCharm CE'"
alias l.='l -d .* '


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\e[1;30m\]\!-\t \[\e[1;30m\][\[\e[1;34m\]\u@\h\[\e[1;30m\]:\[\e[0;37m\]\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \$ "
export GOPATH=/Users/dineshgurumurthy/go


# added by Anaconda3 2.5.0 installer
export PATH="/Users/dineshgurumurthy/anaconda3/bin:/Users/dineshgurumurthy/go/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
