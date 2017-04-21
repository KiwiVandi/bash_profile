export PATH=/usr/local/bin:/usr/local/bin/sublime:$PATH

if [ -d "$HOME/bin" ] ; then
  PATH=“$PATH:$HOME/bin”
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.rvm/scripts/rvm

alias ll='ls -lart'
alias fol='git push origin --force-with-lease'
alias rebase='git rebase -i '
alias rebasea='git rebase --abort'
alias soft='git reset --soft HEAD^'
alias sp='cat ~/.bash_profile'
function mergeto() { git push origin HEAD:"$1"; }
# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gs='git status'
alias gsb='git status -sb'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gsu='git submodule update'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }
function gcoa() { gco $1; gp; gsu; }
function stash() { git add .; git stash; }

# ----------------------
# Handy shit
# ----------------------
alias tab='cd ~/dev/TAB_iOS'
alias subm='~/bin/git-submodule-commitmsg lib/TABService'
function sublime() { 'open /Applications/Sublime\ Text.app' $1; }
function bashp() { sublime ~/.bash_profile; }

