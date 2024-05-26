# Shell

alias vbp='vim ~/.zshenv'
alias sbp='source ~/.zshenv'

# Mac

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# JS

export YARN_PATH=$HOME/.config/yarn/global/node_modules/.bin

# Python

export PIPX_PATH=$HOME/.local/bin
alias vc="python -m venv .venv"
alias vd="deactivate"
alias v="source .venv/bin/activate"
alias pipi="pip install -r requirements.txt"

# Path

export PATH="$PIPX_PATH:$YARN_PATH:$HOME/bin:$PATH"

## py-invoke

alias i='invoke'
alias il='invoke --list'

# AWS

export AWS_DEFAULT_PROFILE=staging
export AWS_DEFAULT_REGION=us-east-1

alias al='aws sso login --sso-session=sso'
alias ae='eval "$(a configure export-credentials --format env)"'
alias au='unset $(env | grep AWS_ | egrep -o "^[^=]+")'

# Git
      ghead() {git symbolic-ref refs/remotes/origin/HEAD | cut -d'/' -f4}
      gsethead() {git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/$(git remote show origin | sed -n '/HEAD branch/s/.*: //p')}
alias ga="git add -A"
      gb() {git rev-parse --abbrev-ref HEAD}
alias gh="git checkout"
      gm() {git checkout $(ghead) $*}
alias gc="git commit -m"
alias gd="git diff HEAD"
alias gf="git fetch"
      gl() {git pull && git merge origin/$(ghead)}
alias gn="git checkout -b"
      gnm() {gm && gn}
      gp() {git push --set-upstream origin $(gb)}
alias gs="git status"
alias hp="hub pull-request"
alias gx="git bisect"
alias gags="ga && gs"
alias gsl="git stash && gm && git pull && git stash pop"
alias gsi="git submodule init"
alias gsu="git submodule update"
alias gmu="git fetch origin $(ghead):$(ghead)"

# Docker

alias dps="docker ps"
alias dpsa="docker ps -a"
