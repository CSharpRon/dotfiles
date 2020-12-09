# Enable color support of directory commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Vi Editor
if [ -x "$(command -v gvim)" ]; then
    alias vim='gvim -v'
elif [ -x "$(command -v vim)" ]; then
    alias vim='vim'
else
    alias vim='vi'
fi

# Package Manager
if [ -x "$(command -v yay)" ]; then
    alias please='yay'
    alias install='-S'
    alias yup="yay -Syyu"
elif [ -x "$(command -v apt)" ]; then
    alias please='sudo apt'
fi


# Nifty Aliases
alias cls='clear && echo -en "\e[3J"'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lynx='lynx -vikeys'
alias visualizer='cava'
alias spt='~/.cargo/bin/spt'
alias restart='shutdown -r 0'
alias restart_keyboard='sudo rmmod atkbd ; sudo modprobe atkbd reset=1'
