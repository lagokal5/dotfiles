# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git
alias g='git'
#use git completion with `g` alias
complete -F _git g
alias gp='g push --set-upstream origin $(g rev-parse --abbrev-ref HEAD)'
#delete merged branches from this repository, (exclude master)
alias delete_merged='git checkout master; git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Docker
alias d='docker'
alias doc='docker-compose'
alias docpry='docker attach $(docker ps | grep -e "->3000" | cut -f 1 -d " ")'

# Bundler
alias bx='bundle exec'
alias bi='bundle install'

#command line tools
alias md='mkdir -p'
alias pd='pushd'
alias po='popd'
