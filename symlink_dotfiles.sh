#!/bin/bash

#Install git prompt
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git

# ensure we're on the base of the dotfiles repo
toplevel="$(git rev-parse --show-toplevel)" && cd "$toplevel" || exit

for f in .[!.]*; do
  [[ $f = .git ]] && continue
  [[ -f ~/$f || -L ~/$f ]] && mv ~/"$f"{,.bak}
  ln -s "$toplevel/$f" ~/"$f"
done
