export ZSH="/home/kuna/.oh-my-zsh"

ZSH_THEME="daveverwer"

CASE_SENSITIVE="true"


# Uncomment the following line if pasting URLs and other text is messed up.
 DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
 COMPLETION_WAITING_DOTS="true"

 HIST_STAMPS="dd/mm/yyyy"

plugins=(git fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias grubmk='doas grub-mkconfig -o /boot/grub/grub.cfg'
alias vi='nvim'
alias vim='nvim'

export PATH="/home/kuna/.local/bin:$PATH"
export STEAM_COMPAT_CLIENT_INSTALL_PATH=".local/share/Steam"

export PNPM_HOME="/home/kuna/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
