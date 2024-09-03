# _________  _   _
#|__  / ___|| | | |
#  / /\___ \| |_| |
# / /_ ___) |  _  |
#/____|____/|_| |_|

###PROMPT###
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

###TERM###
export TERM=xterm-256color

###AUTOSUGGESTIONS###
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

###SYNTAX HIGHLIGHTING###
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###HISTORY###
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/.history

###ALIASES###
alias ls="lsd" 
alias vim="nvim"
alias bspwmconfig="nvim ~/.config/bspwm/bspwmrc"
alias sxhkdconfig="nvim ~/.config/sxhkd/sxhkdrc"
alias polybarconfig="nvim ~/.config/polybar/config.ini"
alias zshconfig="nvim ~/.config/zsh/.zshrc"
alias roficonfig="nvim ~/.config/rofi/config.rasi"
alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.toml"
alias compfyconfig="nvim ~/.config/compfy/compfy.conf"
alias dunstconfig="nvim ~/.config/dunst/dunstrc"
alias conkyconfig="nvim ~/.config/conky/conky.conf"
alias spotifydconfig="nvim ~/.config/spotifyd/spotifyd.conf"
alias sysbackup="rsync -rav --stats .config .themes .vim Bilder Dokumente Downloads .fehbg .vimrc .xinitrc .Xresources .zshenv /run/user/1000/gvfs/sftp:host=192.168.2.210/Linux/PC-Backup"
