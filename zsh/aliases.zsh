# ╔═══════════════════════╗
# ║  Aliases              ║
# ╚═══════════════════════╝

# Version control
alias gc="git commit -m"
alias gco="git checkout"
alias clean-old-branches="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"