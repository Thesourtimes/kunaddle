export ZSH="$HOME/.oh-my-zsh"
export AWT_TOOLKIT=MToolkit
export JAVA_AWT_WM_NONREPARENTING=1

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

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias grubmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vi='$EDITOR'
alias vim='$EDITOR'
alias monero="monero-wallet-gui"
alias ssh='TERM=xterm-256color ssh'
alias dosbox="dosbox-x"
alias booster_regen="sudo /usr/lib/booster/regenerate_images"
export PATH="~/.local/bin:$PATH"
export PNPM_HOME="~/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
