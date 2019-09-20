# Path to your oh-my-zsh installation.
export ZSH="/Users/alasdairm/.oh-my-zsh"

alias zshrc="subl ~/.zshrc"
alias gco="git checkout"
alias gst="git status"
alias gpush="git push"
alias gb="git branch"
alias gpf="git push --force-with-lease"
alias cb='carthage bootstrap --platform iOS,watchOS --use-binaries && afplay /System/Library/Sounds/Pop.aiff'
alias cu='carthage update --platform iOS,watchOS --use-binaries --new-resolver && afplay /System/Library/Sounds/Pop.aiff'
alias sgpkitgen='swift run --package-path scripts/SGPKitGenerator'
alias ddd='rm -rf ./DerivedData'
alias nah="git reset --hard HEAD"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=()

# Xcode via @orta
openx(){ 
  if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
  then
    echo "Opening workspace"
    open *.xcworkspace
    return
  else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
      echo "Opening project"
      open *.xcodeproj
      return  
    else
      if test -n "$(find . -maxdepth 1 -name '*.playground' -print -quit)"
      then
        echo "Opening playground"
        open *.playground
        return
      else 
        echo "Nothing found"
      fi
    fi
  fi
}

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl'
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Github access tokens if needed
