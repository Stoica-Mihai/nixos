if status is-interactive
  # Aliases
  alias ls="ls -alh --color=auto"

  # Key bindings
    bind \cf _fzf_search_directory # Start with CTRL-F the directory search plugin
end

starship init fish | source
