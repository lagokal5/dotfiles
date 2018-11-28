#Basic Bash and VIM config files

Symlink this files to your home

    cd dotfiles
    ./symlink_dotfiles.sh

To test configuration run:
`vim -u .vimrc`

## Visual Studio Extensions
Backup extensions:
`code --list-extensions > code-extensions.txt`
Install extensions:
`cat code-extensions.txt | xargs -L 1 code --install-extension --force`