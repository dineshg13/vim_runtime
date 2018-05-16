#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"


# add oh-my-zsh, update .init-vim , update vim plug , zsh-auto , add .zshrc 


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo 'export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions history kubectl golang docker sublime zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias c=clear
alias k=clear
alias v=nvim
alias mg="mongo 192.168.1.2"
alias mkdir="mkdir -pv"
alias gr="go run"
alias l.="l -d .* "
alias l="ls -ltr"
alias gu="go get -u "
alias gd="git diff "
alias gs="git status"
alias release_prefix="echo "release-$(date +%Y)W$(date +%V)"" 
export PAGER="less -SF"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/home/dineshgurumurthy/dev/tools/google-cloud-sdk/path.zsh.inc" ]; then source "/home/dineshgurumurthy/dev/tools/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/home/dineshgurumurthy/dev/tools/google-cloud-sdk/completion.zsh.inc" ]; then source "/home/dineshgurumurthy/dev/tools/google-cloud-sdk/completion.zsh.inc"; fi


export DEFAULT_USER=dineshgurumurthy
prompt_context(){}
export EDITOR=nvim
source <(kubectl completion zsh )
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

prod_ingest_west () {
  gcloud config set project fubotv-prod
  gcloud container clusters get-credentials prod-vid-svc-us-west1 --zone=us-west1-b
}

 
gssh () {
        if [ -e $(which jq) ]
        then
                host=$1
                zone=$(gcloud compute instances list --filter="name ~ $host" --format json | jq -r ".[0].zone | split("/") | .[-1]")
                gcloud compute ssh $host --zone=$zone
        else
                echo "gssh requires jq, please install jq before proceeding"
        fi
}

' > ~/.zshrc


# install vim-plug

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create init.vim

md ~/.config/nvim

echo '
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
' > ~/config/nvim/init.vim
