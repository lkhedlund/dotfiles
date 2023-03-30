# ╔═══════════════════════╗
# ║  CONTAINER CONFIG     ║
# ╚═══════════════════════╝
func run_rspec() {
  # Provide an engine rspec path, i.e. `engines/communities/type.spec`
  if [[ $1 =~ (engines\/[A-Za-z]+)\/(.*) ]]
  then
    bundle exec rspec ${match[2]}
  else
    bin/spring rspec $1
  fi
}

func create_pr() {
  # Defaults to staging, but any branch can be passed in
  base_branch=${1:-staging}
  current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
  gh pr create -B $base_branch -t $current_branch
}