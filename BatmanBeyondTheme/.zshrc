# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Custom Aliases
alias nv='nvim'
alias battery='cat /sys/class/power_supply/BAT0/capacity'
alias cat='bat'
alias catn='/usr/bin/cat'
alias catnl='bat --paging=never'

# Manual aliases
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Development paths
export PATH=$PATH:$HOME/.cargo/env
#export PATH="$HOME/.local/bin:$PATH"
export DOTNET_ROOT="/usr/share/dotnet"
export PATH="$PATH:/usr/share/dotnet"
export PATH="$PATH:/home/youngermaster/Flutter/flutter/bin"
export PATH="$PATH:/home/youngermaster/AndroidStudio/android-studio/bin"
export PATH="$PATH:/home/youngermaster/JetBrains/Rider/bin/"
#export PATH="$PATH:/home/youngermaster/AppImages"

# Android SDK Tools
export PATH="$PATH:/home/youngermaster/Android/Sdk/build-tools/32.0.0/"
export PATH="$PATH:/home/youngermaster/Android/Sdk/cmdline-tools/latest/bin/"

# Pomodoro Program PATH
export PATH="$PATH:/usr/share/pomodoro_cli/"

# Git config
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_youngermaster_github
ssh-add ~/.ssh/id_ed25519_youngermaster_gitlab
ssh-add ~/.ssh/id_rsa_jmyoung_getaclub
clear

# To avoid errors gray screens with IDEA IDEs or Android Studio
#wmname LG3D

# Set keymaps to LATAM
setxkbmap -layout latam,es

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
