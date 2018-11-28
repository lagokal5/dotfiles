# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Shell
alias md='mkdir'
# Git
alias g='git'
alias gp='g push --set-upstream origin $(g rev-parse --abbrev-ref HEAD)'
# Docker
alias d='docker'

# Rails 3
alias rg='script/rails generate'
alias rs='script/rails server'
alias rc='script/rails console'
alias rd='script/rails dbconsole'

# Bundler
alias b='bundle'
alias bx='bundle exec'
alias bi='bundle install'

#command line tools
alias md='mkdir'
alias pd='pushd'
alias po='popd'
