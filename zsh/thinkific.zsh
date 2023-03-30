# Thinkific-specific Setup
ssh-add --apple-load-keychain &> /dev/null

alias awslogin="aws --profile think-dev sso login"
alias rails-up="bin/rails s"
alias rails-reset="bin/spring stop && bin/rails s"
alias bx="bundle exec"
alias bxr="bundle exec rspec"
alias sidekiq-up='redis-cli -h redis flushall && bundle exec sidekiq'
alias shoryuken-up='bundle exec shoryuken -R -C config/shoryuken.yml'

export THINKIFICPATH=/Users/lars/workspace
export DEV_PACKAGES="zsh vim imagemagick"