export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH
export STARSHIP_CONFIG=~/.config/starship.toml
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export XDG_CONFIG_HOME=~/.config
export WLR_RENDERER_ALLOW_SOFTWARE=1
eval $(starship init zsh)
