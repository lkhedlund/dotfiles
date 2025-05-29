# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
                                        
# ╔════════════════════════╗
# ║   BASE CONFIGURATION   ║
# ╚════════════════════════╝
export DOTFILES_FOLDER="${HOME}/.dotfiles"
export ZSH_FOLDER="${DOTFILES_FOLDER}/zsh"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# Methods
include() {
  [[ -f "$1" ]] && source "$1" || echo "ERROR loading ${1}"
}

# ╔═══════════════════════╗
# ║ LOAD IT ALL UP, CHIEF ║
# ╚═══════════════════════╝
include $ZSH_FOLDER/plugins.zsh
include $ZSH_FOLDER/aliases.zsh
if [[ $(uname) = Darwin ]]; then
  include $ZSH_FOLDER/mac.zsh
fi
[[ ${REMOTE_CONTAINERS} ]] && include $ZSH_FOLDER/dev-container.zsh