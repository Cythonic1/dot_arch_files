# Add user configurations here
# For HyDE not to touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.hyde.zshrc - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information
source ~/.zplug/init.zsh

kitty +kitten icat --align left --place=80x20@0x0 "$(find ~/Downloads/wallpapers -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | shuf -n 1)"
printf '\033[21;1H'
echo ""
# echo "
#
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⢀⣴⠂⢀⣀⣴⡆⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀
# ⠀⠀⠀⠀⢸⣯⡠⠜⠛⠛⠃⠀⠀⠀⠀⠀⠀⡼⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀
# ⠀⠄⠒⠊⢹⡇⢠⡖⠀⠀⠀⠀⠀⠀⠀⢀⠞⣠⢏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀
# ⠀⠀⠀⢀⣿⣷⡿⢷⣆⠀⠀⠀⠀⠀⢀⣾⣿⡟⢈⣿⡿⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀
# ⠀⢀⡶⠋⢿⣿⠃⢈⡿⠀⠀⠀⠀⠀⣾⣿⣟⣰⣿⡿⢁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀
# ⠀⢿⣄⢀⣼⣇⠀⠼⠇⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⢃⣾⣿⣿⣿⣟⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
# ⠀⠀⠉⠁⢈⡙⠀⠀⠀⠀⢀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀
# ⠀⠀⠀⠀⣿⡤⠴⠒⢹⣿⣿⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢃⠏⢈⣿⣿⣿⣿⣿⣿⣿⡿⢻⣿⣿⣿⣿⡇
# ⣀⡤⠒⠙⣿⠀⣠⠆⠈⠉⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠥⢯⣀⣜⣿⣿⣿⣿⣿⠿⡿⠃⢸⣿⣿⣿⣿⡇
# ⠀⠀⠀⢀⣿⣼⠧⣤⡀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢁⣴⣶⣶⠀⠹⡆⠙⠋⠉⠀⢾⣕⠒⢻⣿⣿⣿⣿⡇
# ⠀⣠⠞⢹⣿⠁⠀⠈⣿⡄⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣸⡟⣛⡟⠀⠀⠋⠀⠀⠀⢠⣿⣿⠀⣼⣿⣿⣿⣿⠃
# ⢰⣏⣰⠟⠿⠄⠀⠀⠿⠃⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⠛⣡⢴⣿⣿⣿⣿⣿⠀
# ⠀⠉⠀⠀⠀⠀⢀⡄⠀⣀⣶⣶⣆⠈⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⡿⠀
# ⠀⠀⠀⠀⢀⣠⣼⠗⠉⠀⡈⠉⠁⠀⠀⠀⠀⢈⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⠇⠀
# ⡀⣀⠀⠚⠉⠀⣿⡤⣤⣿⡁⠀⠀⠀⠀⢠⠒⣱⡇⠀⠈⢻⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⣠⣴⣿⣿⣿⡿⠻⠋⠀⠀
# ⡇⣿⠀⠀⢀⡴⣿⣶⠏⠈⢿⡄⠀⡰⠒⠙⡞⣿⡇⠀⠀⠈⢇⠈⠉⠉⠉⢿⠿⢟⣲⣄⣀⠀⢀⡠⢴⣶⣿⣏⠙⠻⣏⠁⠀⠀⠠⠀⠀
# ⠀⠀⠀⢀⣾⣡⠿⡧⠀⠀⢈⡤⠊⠀⠀⢀⢣⢹⡇⠀⠀⠀⠈⡄⠀⠀⠀⠈⢿⡰⠛⠻⢆⠉⠁⠀⢀⡬⡻⣿⡆⠀⠈⢆⠀⠀⠈⠀⠀
# ⡀⠀⠀⠀⠉⠀⠀⠀⡠⠖⠁⠀⠀⠀⡠⠚⢸⣾⡇⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠧⠀⠀⠀⠱⣄⠀⡌⠀⢹⣿⣿⠀⠀⠸⡀⠀⠀⠀⠀
# ⡧⠀⠀⠀⠀⠀⢀⡞⠀⠒⠒⢄⠀⠊⠀⠀⠆⣿⣇⠀⣠⠒⠢⢄⠹⡄⠀⠀⠀⠀⠀⠀⢀⡜⠈⢆⠑⢤⠀⢿⣿⡇⡄⠀⡇⠀⠀⠀⠀
# ⠇⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠱⡄⠀⠀⠀⣿⣿⣼⣿⠀⠀⠈⢷⠱⣀⡀⠀⠀⠀⠀⠎⠀⠀⠈⣆⠘⠀⢸⣿⣧⠁⢀⡇⠀⠀⠀⠀
# ⡄⠀⠀⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⣿⣿⣿⣿⠀⠀⢀⡇⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣆⠀⢸⣿⡇⠀⢈⠀⠀⠀⠀⠀
# ⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠈⠓⠦⡀⠱⡀⠀⠀⠀⠀⠀⢀⣤⣾⣿⡄⠀⢿⡇⠀⢀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⢢⡱⣄⣀⣤⣴⣾⣿⣿⣿⣿⣷⠀⠈⢧⠀⡆⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠑⣌⢻⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠈⣶⠇⠀⠀⠀⠀⠀"
# Install plugins if not already installed
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "agkozak/zsh-web-search"
zplug "rupa/z"
zplug load 

#  Aliases 
# Add aliases here
alias pomors=prom
alias ls='exa --icons '
alias thm='sudo openvpn /home/groot/Downloads/pythonic01.ovpn'
alias htb='sudo openvpn /home/groot/Downloads/competitive_pythonic01.ovpn'

bindkey -v
#  This is your file 
# Add your configurations here
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "  
export EDITOR=nvim
eval "$(zoxide init zsh)"

DISABLE_AUTO_TITLE="true"

[ -f "/home/groot/.ghcup/env" ] && . "/home/groot/.ghcup/env" # ghcup-env
eval "$(starship init zsh)"
export PATH=$PATH:/home/groot/tools
export PATH=$PATH:/home/groot/.local/share/gem/ruby/3.4.0/bin

