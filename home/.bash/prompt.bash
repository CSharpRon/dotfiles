# Use the powerline prompt if it is installed
if [ -x "$(command -v powerline-go)" ]; then
    . "$HOME/.bash/powerline-go.prompt"
    PS1="$(powerline-go -error $? -modules "cwd,docker,git" -newline -cwd-max-depth 4)"
elif [ -x "$(command -v powerline)" ]; then
    . "$HOME/.bash/powerline.prompt"
else
    . "$HOME/.bash/vanilla.prompt"
fi
