
# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Enable vi keybindings
bindkey -v

# Add bin folder to path
[ -d ~/bin ] && export PATH=~/bin:$PATH

# Alias definitions.
# TODO - create zsh specific file
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

typeset -ga precmd_functions
precmd_functions+='update_git_branch_prompt'
update_git_branch_prompt() {
    RPROMPT=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
}

# Colors
export CLICOLOR=1;

# Customize prompt
# PROMPT=$'[%n@%m %~]$ '
PROMPT=$'\e[0;35m[%n@%m %~]$ \e[0m'

# Enable completion
autoload -Uz compinit
compinit


