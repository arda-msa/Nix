# https://fishshell.com/docs/current/language.html

# ======================================
# Path Management
# ======================================

# Add ~/.local/bin to PATH
fish_add_path -g ~/.local/bin

# How `cachyos-fish-config` does it:
# if test -d ~/.local/bin
#     if not contains -- ~/.local/bin $PATH
#         set -p PATH ~/.local/bin
#     end
# end

# ======================================
# Variables
# ======================================

set -gx EDITOR nvim
set -gx VISUAL nvim
# set -gx MANPAGER 'nvim +Man!'
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT -c

# Settings for fish-done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

# fzf
set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git --strip-cwd-prefix'
set -gx FZF_DEFAULT_OPTS '--layout=reverse --border=rounded --scheme=path'

set -gx FZF_CTRL_T_COMMAND 'fd --hidden --follow --exclude .git --strip-cwd-prefix'
set -gx FZF_CTRL_T_OPTS \
    "--preview 'if test -d {}; tree -C {} | head -50; else; bat --color=always --style=numbers --line-range=:500 {}; end' \
     --bind 'alt-p:change-preview-window(down|hidden|)'"

set -gx FZF_ALT_C_COMMAND 'fd --type d --hidden --follow --exclude .git --strip-cwd-prefix'
set -gx FZF_ALT_C_OPTS "--preview 'tree -C {} | head -50'"

set -gx FZF_CTRL_R_OPTS "--with-nth 2.. --bind 'alt-t:change-with-nth(2..|1..)'"

# ======================================
# Functions
# ======================================

# Fish Greeting
function fish_greeting
    # disabled
end

# Functions needed for !! and !$
function __history_previous_command
    switch (commandline -t)
        case "!"
            commandline -t $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function __history_previous_command_arguments
    switch (commandline -t)
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

if [ "$fish_key_bindings" = fish_vi_key_bindings ]

    bind -Minsert ! __history_previous_command
    bind -Minsert '$' __history_previous_command_arguments
else
    bind ! __history_previous_command
    bind '$' __history_previous_command_arguments
end

function backup --argument filename
    cp $filename $filename.bak
end

# Yazi Shell Wrapper
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# ======================================
# Aliases
# ======================================

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons' # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons' # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'" # show only dotfiles

# Misc
alias ..='cd ..'
alias gr='cd (git rev-parse --show-toplevel)' # Jump to git repo root
alias vim='nvim'
alias grep='grep --color=auto'
alias ltree='tree -a -F -I ".git" -L 4 --dirsfirst'

# ======================================
# Integrations
# ======================================

# Initialize nix-your-shell if installed
if command -q nix-your-shell
    nix-your-shell fish | source
end

# Initialize zoxide (smarter cd)
zoxide init fish | source

# Initialize fzf
fzf --fish | source

# Initialize television
tv init fish | source

# Initialize starship
starship init fish | source

# Initialize atuin
atuin init fish | source
