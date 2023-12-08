
# Enable colors
autoload -U colors && colors

# Sourcing useful functions:
source "$ZDOTDIR/.zfunctions"

# Loading files
zsh_add_file "zaliases"

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
