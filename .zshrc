
# Enable colors
autoload -U colors && colors

# Sourcing useful functions:
source "$ZDOTDIR/.zfunctions"

# Sourcing FZF integrations
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
# Loading files
zsh_add_file "zaliases"

# loading version control info
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT="%n@%m %~> "
#PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
#
#History in cache directory
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=110000
SAVEHIST=10000

# Compinstall
zstyle :compinstall filename '/home/noah/.config/zsh/.zshrc'

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "~/.cache/zsh/.zcompdump"
_comp_options+=(globdots)             #include hidden files


# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"

export PATH="$HOME/.local/bin:$PATH"
