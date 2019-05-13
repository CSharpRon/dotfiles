#!/usr/bin/env bash 

# Copy all of these configuration files to the home dir, overwriting existing files
if [ -f .bashrc ]; then
   cp .bashrc ~/.bashrc -f 
fi

if [ -f .vimrc ]; then
   cp .vimrc ~/.vimrc -f 
fi

if [ -f .bash_sources ]; then
   cp .bash_sources ~/.bash_sources -f 
fi

if [ -f .bash_aliases ]; then
   cp .bash_aliases ~/.bash_aliases -f 
fi

if [ -f .bash_functions ]; then
   cp .bash_functions ~/.bash_functions -f 
fi

bash
