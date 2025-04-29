# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
PATH="$PATH:/opt/nvim/"

# alias
alias v='nvim'
alias l='ls -la'

# Prompt
left-prompt(){
    local current_dir="%S%F{45}%~ %s%F"
    local arrow="%F{47}→%f"

    echo -e "\n${current_dir}\n${arrow} "
}

PROMPT=`left-prompt`
unset -f left-prompt
