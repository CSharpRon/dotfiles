# Load helper files
if [ -f ~/Dev/dotfiles/.bash_aliases ]; then
    . ~/Dev/dotfiles/.bash_aliases
fi

if [ -f ~/Dev/dotfiles/.bash_functions ]; then
    . ~/Dev/dotfiles/.bash_functions
fi 

# Startup
cls
fortune | lolcat
