ZSH_THEME="af-magic"

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'
alias amend='git commit --amend'

alias vim='nvim'

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


# NVM
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=$PATH:~/dotfiles/scripts
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# TMUX
export TERM="xterm-256color"
alias tmls='tmux ls'
alias tmat='tmux attach -t'
alias tmn='tmux new-session -s'
alias tmkill='tmux kill-session -t'

#vi in bash
set -o vi

# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit
# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# add user@domain to the custom cli git infos
PS1="${FG[237]}\${(l.\$(afmagic_dashes)..-.)}%{$reset_color%}
[%F{yellow}%n%f@%F{blue}${${(%):-%m}#zoltan-}%f] ${FG[032]}%~\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%} "

# export nvim as defualt editor
export EDITOR=/usr/bin/nvim 
