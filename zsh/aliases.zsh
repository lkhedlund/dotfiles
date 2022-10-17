# ╔═══════════════════════╗
# ║  Aliases              ║
# ╚═══════════════════════╝

# Version control
alias gc="git commit -m"
alias gco="git checkout"
alias clean-old-branches="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
alias rails-up="bin/rails s"
alias rails-reset="bin/spring stop && bin/rails s"
alias bx="bundle exec"
alias bxr="bundle exec rspec"