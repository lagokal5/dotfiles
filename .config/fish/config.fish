#Public variables
set -x TEAM cep
set -x GITHUB_URL http://github.bus.zalan.do
set -x AWS_DEFAULT_REGION eu-central-1

# Shell
# alias md='mkdir'
function md
    mkdir $argv
end

function ll
    ls -las $argv
end

# Docker
alias d='docker'

### NodeJS
#include npm bin into the path for the current session
alias npmbin='set PATH $PATH (npm bin)'
#Include node 8.1 to path, TODO should be done automatically
set -x PATH /usr/local/Cellar/node/8.3.0_1/bin/ $PATH

#### Git
# alias g='git'
function g
    git $argv
end

#Default Origin Branch name
set -x ORIGIN origin

#delete merged branches from this repository
alias delete_merged='g co master; g branch --merged | grep -v "\*" | xargs -n 1 g branch -d'

#create brand new remote branch of current branch
# e.g.: git push --set-upstream origin feature/PIZ-1743-ux-improvements
alias gp='g push --set-upstream origin (g rev-parse --abbrev-ref HEAD)'

#create a pull request for current branch for the team to review, when using same repo for branches
alias pr='open -a Google\ Chrome "$GITHUB_URL/$TEAM/"(basename $PWD)"/compare/master..."(g rev-parse --abbrev-ref HEAD)'
