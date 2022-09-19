# Thinkific-specific Setup
ssh-add --apple-load-keychain &> /dev/null
alias awslogin="aws --profile think-dev sso login"
alias rails-up="bin/rails s"
alias bx="bundle exec"
alias bxr="bundle exec rspec"

export THINKIFICPATH=/Users/lars/workspace
export DEV_PACKAGES="zsh vim imagemagick"