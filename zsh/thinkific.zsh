# Thinkific-specific Setup
ssh-add --apple-load-keychain &> /dev/null
alias awslogin="aws --profile think-dev sso login"

export THINKIFICPATH=/Users/lars/workspace
export DEV_PACKAGES="zsh vim imagemagick"

func engine_rspec() {
  # Provide an engine rspec path, i.e. `engines/communities/type.spec`
  if [[ $1 =~ (engines\/[A-Za-z]+)\/(.*) ]]
  then
    bundle exec rspec ${BASH_REMATCH[2]}
  fi
}

func create_pr() {
  # Defaults to staging, but any branch can be passed in
  base_branch=${1:-staging}
  current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
  echo gh pr create -B $base_branch -t $current_branch
}