HOME_BIN=/Users/oliver/.local/bin

export PATH="$PATH:$HOME_BIN"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(direnv hook zsh)"
