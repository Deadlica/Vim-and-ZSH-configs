# Macros
alias vim="nvim"
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -a --color=auto"
alias lal="ls -al --color=auto"
alias os="neofetch"
alias kth-ssh="/home/samuel/documents/kth/.kth-ssh.sh"
alias kth-sftp="/home/samuel/documents/kth/.kth-sftp.sh"

# Default Editor
export EDITOR=/usr/bin/nvim

# Wsl2 ohmyposh themes
eval "$(oh-my-posh init zsh --config ~/.poshthemes/dracula.omp.json)"

# Terminal syntax autosuggestions and syntaxhighlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybinds
bindkey "^H"      backward-kill-word  # Ctrl + <backspace>
bindkey "^[^?"    backward-kill-word  # Alt + <backspace>
bindkey "^[[3;5~" kill-word           # Ctrl + DEL
bindkey "^[[1;5D" backward-word       # Ctrl + Left
bindkey "^[[1;5C" forward-word        # Ctrl + Right
bindkey "^[[2~"   delete-char         # Del
