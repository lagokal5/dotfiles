#Public variables
set -x TEAM resolving
set -x GITHUB_URL http://github.com
set -x AWS_DEFAULT_REGION eu-central-1

# Shell
# alias md='mkdir'
function md
    mkdir $argv
end

function ll
    ls -last $argv
end

# Docker
alias d='docker'

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

### Override default prompt function adding git branch/status
function fish_prompt
    set_color blue;
    printf '%s ' (whoami);
    set_color green;
    printf '%s' (prompt_pwd);
    set_color yellow;
    printf '%s> ' (__fish_git_prompt);
    set_color normal;
end
