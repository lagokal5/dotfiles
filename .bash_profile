# Includes global env variables
# export GITHUB_DEPLOYMENT_TOKEN=
# export PROJECT_DIR=
# export GITHUB_USERNAME=
[ -z ~/.bash_credentials ] && source ~/.bash_credentials

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export EDITOR=vim

#MYSQL keg extension
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#compilers
export LDFLAGS="-L/usr/local/opt/mysql-client/lib"
export CPPFLAGS="-I/usr/local/opt/mysql-client/include"
#For pkg-config to find mysql-client you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/mysql-client/lib/pkgconfig"

export PATH="/usr/local/sbin:$PATH"
