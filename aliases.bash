#!/bin/bash

# Reload Library
alias reload='source ~/.bash_profile'

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool TRUE && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool FALSE && killall Finder"

# Start / Stop FTP for local WP dev
alias startftp="sudo launchctl load -F /System/Library/LaunchDaemons/ftp.plist"
alias stopftp="sudo launchctl unload /System/Library/LaunchDaemons/ftp.plist"

# Git
alias g='git'
alias gl='git pull'
# Lovely git log, thx @visionmedia
alias glog="git log --format='%Cgreen%h%Creset %Cblue%ad%Creset %C(cyan)%an%Creset: %s' --graph --date=short"

# Via http://tjholowaychuk.com/post/26904939933/git-extras-introduction-screencast
alias gd="git diff | subl"
alias ga="git add"
alias gbd="git branch -D"
alias gst="git status"
alias gca="git commit -a -m"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gpa="git push --all origin"

# Via https://coderwall.com/p/xuq5cq
alias gp="git push origin `git rev-parse --abbrev-ref HEAD`"

alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull origin master"
alias gcd='cd "`git rev-parse --show-toplevel`"'

alias dd="dandelion deploy"

# Sublime Text 2
alias e="subl . &"

# output current git branch, echo $(curbr)
function curbr() {
  git rev-parse --abbrev-ref HEAD
}
