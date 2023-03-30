# ╔═══════════════════════╗
# ║  Aliases              ║
# ╚═══════════════════════╝

# Version control
alias gc="git commit -m"
alias gco="git checkout"
alias gclean="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"