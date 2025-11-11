if status is-interactive
  # Aliases
  alias ls="ls -alh --color=auto"  
end

set -gx FZF_CTRL_T_OPTS "\
    --preview 'bat --color=always --style=numbers --line-range :500 {}' \
    --height 80% \
    --border \
    --pointer '→' \
    --cycle \
    --reverse \
    --prompt 'File Content > ' \
    --bind 'ctrl-/:change-preview-window(down|hidden)'"

set -gx FZF_ALT_C_OPTS "\
    --height 50% \
    --layout=reverse \
    --border=rounded \
    --prompt 'Jump > ' \
    --pointer '→' \
    --header-lines 1 \
    --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 \
    --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 \
    --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 \
    --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4 \
    --preview 'tree -C -L 2 {} | head -200'"

set -gx FZF_DEFAULT_OPTS "\
    --layout=reverse \
    --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 \
    --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 \
    --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 \
    --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4 \
    --pointer '→' \
    --prompt 'History > ' \
    $FZF_DEFAULT_OPTS"

starship init fish | source
fzf --fish | source
