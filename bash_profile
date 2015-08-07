
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Added for aliasing hub command to git
eval "$(hub alias -s)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Rake Completion
complete -C ~/.rake_completion -o default rake
## Homebrew autocomplete
source `brew --repository`/Library/Contributions/brew_bash_completion.sh

## Aliases
## ls Aliases
alias ls='ls -lh'
alias ll='ls -alFh'
alias lss='ls -1p'
alias lsa='ls -ap'
alias lsl='ls -l'
# System
alias cd..='cd ..'
alias cd..2='cd ../..'
alias cd..3='cd ../../..'
alias cl='clear'
alias irbc='irb --readline -r irb/completion'
alias grep='grep --color'
# GIT
alias gs='git status'
alias gdif='git diff'
alias gcm="git commit -m"
alias gf="git fetch --all"
# Ruby/Rails
alias railsc='rails c'
alias 193='rvm use 1.9.3'
alias be='bundle exec'
# return a nicely formatted date and time
alias currentdt="date '+DATE: %Y-%m-%d%nTIME: %H:%M:%S'"
# copy pub key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to clipboard.\n'"
# Mute volume
alias stfu="osascript -e 'set volume output muted true'"
# nice path printing
alias path='echo -e ${PATH//:/\\n}'
# Safe deletion
alias rm='rm -i'
# easier exit status
alias estatus='echo $?'
# Disk space and usage
alias freespace='df -h'
# Navigate to RAD projects
alias 360='cd ~/RAD/ThreeSixtyIndustrial'
alias hive='cd ~/RAD/nexus-hive'
alias nexus='cd ~/RAD/nexus'

#
# branch_color() {
#   # git diff --quiet 2> /dev/null
#   if [ $? == '0' ]; then
#     echo $txtgrn
#   else
#     echo $txtpur
#   fi
#   return
# }

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
# Default prompt ==> '\h:\W \u\$'
## Gives prompt path blue color

###################
# TERMINAL COLORS #
###################

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

#################
# PROMPT COLORS #
#################

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# This does not change branch name color
export PS1="\[\e[0;36m\]\u \[\e[1;34m\]\w/\[\e[m\]\[\e[0;32m\]\$(parse_git_branch)\[\e[m\] \[\e[0;31m\]$\[\e[m\] "

# changes the branch name color if changes in working directory
# PROMPT_COMMAND='PS1="\[${txtcyn}\]\u \[${bldblu}\]\w/\[${txtrst}\]\[$(branch_color)\]\$(parse_git_branch)\[${txtrst}\] \[${txtred}\]$\[${txtrst}\] "'

export CLICOLOR=1
export HISTSIZE=5000
export HISTFILESIZE=50000



echo_colors() {
  echo -e "${White}White${Color_Off}"
  echo -e "${Black}${On_White}Black${Color_Off}"
  echo -e "${Red}Red${Color_Off}"
  echo -e "${Yellow}Yellow${Color_Off}"
  echo -e "${Cyan}Cyan${Color_Off}"
  echo -e "${Purple}Purple${Color_Off}"
  echo -e "${Green}${On_Red}Green${Color_Off}"
}

echo_green() {
  echo -e "${Green}${On_White}Green${Color_Off}"
  echo -e "${Green}${On_Black}Green${Color_Off}"
  echo -e "${Green}${On_Blue}Green${Color_Off}"
  echo -e "${Green}${On_Red}Green${Color_Off}"
  echo -e "${Green}${On_Yellow}Green${Color_Off}"
  echo -e "${Green}${On_Cyan}Green${Color_Off}"
  echo -e "${Green}${On_Purple}Green${Color_Off}"
}

echo_blue() {
  echo -e "${Blue}${On_White}Blue${Color_Off}"
  echo -e "${Blue}${On_Black}Blue${Color_Off}"
  echo -e "${Blue}${On_Blue}Blue${Color_Off}"
  echo -e "${Blue}${On_Red}Blue${Color_Off}"
  echo -e "${Blue}${On_Yellow}Blue${Color_Off}"
  echo -e "${Blue}${On_Cyan}Blue${Color_Off}"
  echo -e "${Blue}${On_Purple}Blue${Color_Off}"
}

weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-85258}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}
