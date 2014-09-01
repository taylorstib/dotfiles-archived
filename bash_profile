if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/bin:/usr/local/heroku/bin:$PATH"

### Add for color 
export CLICOLOR=1
export LSCOLORS=cxFxCxDxBxegedabagaced 
#export LSCOLORS=Exfxcxdxbxegedabagacad #darkblue

### Aliases
alias ga='git add .'
alias gb='git branch'
alias gs='git status'
alias gc='git checkout'
alias gpu='git pull'
alias ls='ls -p'
alias lss='ls -1p'
alias lsa='ls -ap'
alias cd..='cd ..'
alias cl='clear'
alias irbc='irb --readline -r irb/completion'
alias grep='grep --color'
alias rspec='rspec -c'

### Here is the previous shell prompt
export PS1="\w \n$ "
# \h:\W \u\$