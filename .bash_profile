#!/bin/bash

export DOTFILES="$HOME/.dotfiles"

# Don't check mail when opening terminal.
unset MAILCHECK

# enable colors
alias ls="command ls -G"
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# Set Sublime as default editor
export EDITOR="subl -w"
export GIT_EDITOR='subl -w'

# source congi bash files, like aliases, colors, base theme
HELPERS="${DOTFILES}/*.bash"
for config_file in $HELPERS
do
  source $config_file
done

# sweet prompt theme from bash-it
source "$DOTFILES/themes/rainbowbrite.theme.bash"

# source custom files
CUSTOM="$DOTFILES/custom/*"
for config_file in $CUSTOM
do
  source $config_file
done


source ~/.profile
