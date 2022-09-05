# ╔═══════════════════════╗
# ║  MAC SPECIFIC CONFIG  ║
# ╚═══════════════════════╝

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  source $(brew --prefix nvm)/nvm.sh
  # [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  # [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi