# ╔═══════════════════════╗
# ║  Aliases              ║
# ╚═══════════════════════╝

# Version control
alias gc="git commit -S -m"
alias gco="git checkout"
alias gclean="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
# Rails
alias rails-up="bin/rails s"
alias rails-reset="bin/spring stop && bin/rails s"
alias bx="bundle exec"
alias bxr="bundle exec rspec"
alias shoryuken-up="bundle exec shoryuken -R -C config/shoryuken.yml"
alias flush-sidekiq="echo 'Sidekiq.redis { |r| r.flushall }' | bundle exec rails c"
alias bundle-install="bundle install && BUNDLE_GEMFILE=Gemfile.next bundle install"
# Godot
alias gd-themes="git clone https://github.com/godotengine/godot-syntax-themes.git ~/Library/Application\ Support/Godot/text_editor_themes"