# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias verificient='source ~/Code/venvs/verificient/bin/activate'
alias runserver='python manage.py runserver 0.0.0.0:8000'
alias prettybg="google-chrome --app='http://8bitdash.com/'"
alias notes='vi /home/george/Notes/"`date +\"%Y-%m-%d\"`".txt'
alias vnotes='ls /home/george/Notes/'
alias tmux='tmux -2'
alias weather='finger new_york@graph.no'
c2f() {echo "$(( ($1*(9.0/5.0))+32 ))"}
f2c() {echo "$(( ($1-32)*(5.0/9.0)  ))"}

meteograph() {
  #if ["$1" != ""]
  #then
  #    local location="new_york"
  #else
  #    local location="$1"
  #fi
  bash $ZSH/custom/meteograph.sh ${1:-new_york}

}

ncfilecatch() {
    if ["$1" != ""]
    then
        local port=8000
    else
        local port=$1
    fi
    nc -l $port
}

crypt() {openssl des3 -e -k $1}
uncrypt() {openssl des3 -d -k $1}
pyeval() {python -c "print $1"}
resource() {source ~/.zshrc}
silently() {$1 &>/dev/null &}
