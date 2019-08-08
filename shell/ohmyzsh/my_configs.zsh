## ENV
export PATH=$HOME/.local/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)

# brewhome bottle
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=15'

#command -v minikube > /dev/null 2>&1 && minikube status > /dev/null 2>&1 && eval $(minikube docker-env)

# aliases
alias cls=clear
alias rmd="rm -rf"

# npm
alias npmgin="npm i -g"
alias npmgrm="npm u -g"
alias npmgls="npm list -g --depth 0"
alias npmclean="npm cache clean --force"

#pip
alias pipls="pip list"
alias pipin= "pip install --user"
alias piprm="pip uninstall --user"
alias pipout="pip list --outdated"

# kubectl
alias kapod="kubectl get pod --all-namespaces -o wide"
alias kasvc="kubectl get svc --all-namespaces -o wide"
alias kpod="kubectl get pod"
alias ksvc="kubectl get svc"

# homebrew
alias cask="brew cask"
alias bins="brew install"
alias brm="brew uninstall"
alias bcs="brew cask list"
alias bcinfo="brew cask info"
alias bcins="brew cask install"
alias bcrm="brew cask uninstall"
alias bcrins="brew cask reinstall"
alias bcupg="brew cask upgrade"

alias eczsh="ec ~/.zshrc"
