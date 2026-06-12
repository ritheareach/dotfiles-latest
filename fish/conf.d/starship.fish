if status is-interactive
    set -gx STARSHIP_CONFIG "$HOME/github/dotfiles-latest/starship-config/active-config.toml"
    starship init fish | source
end
