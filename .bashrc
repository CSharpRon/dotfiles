# Load helper files
if [ -f .bash_aliases ]; then
    . .bash_aliases
fi

if [ -f .bash_functions ]; then
    . .bash_functions
fi 

# Startup
cls
fortune | lolcat
