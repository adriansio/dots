## Export PATH
export PATH=/usr/local/bin:$HOME/bin:/usr/local/sbin:$PATH

## Put brew's ruby in front
export PATH=/usr/local/opt/ruby/bin:$PATH

## Use gnu tools instead
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# Use sublime for Ctrl+x+e
EDITOR="sublime -w"

## Start an HTTP server from a directory, optionally specifying the port
function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/" && python -m SimpleHTTPServer "$port"
}

## Customize the terminal input line
prompt() {
  PS1="\[\033[36m\]\]\h \[\033[33m\]\w $ \[\033[0m\]"
}

PROMPT_COMMAND=prompt

###########
# Aliases #
###########

## matrix fun
function hax0r() {
    perl -e '$|++; while (1) { print " " x (rand(35) + 1), int(rand(2)) }'
}

## Color ls
alias ls='ls --color=auto -hF'

## Display as a list, sorting by time modified
alias ll='ls -1t'

## Display the insides of a particular directory
alias lv='ls -R'

## Git aliases from TJ Holowaychuk
alias gd="git diff | subl"
alias ga="git add"
alias gbd="git branch -D"
alias gs="git status"
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull --rebase origin master"
alias gcd='cd "`git rev-parse --show-toplevel`"'

## Get the process on a given port
function port() {
  lsof -i ":${1:-80}"
}

## subl
alias s="sublime -a"

## gopen - open to own github

function gopen() {
  open "https://github.com/adriansio/${1}";
}

## Open localhost

function ol() {
  open "http://localhost:${1:-3000}"
}