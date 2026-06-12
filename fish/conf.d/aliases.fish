# ls
if command -q eza
    alias ls='eza'
    alias ll='eza -lhg'
    alias lla='eza -alhg'
    alias tree='eza --tree'
else
    alias ll='ls -lh'
    alias lla='ls -lha'
end

# cat
if command -q bat
    alias cat='bat --paging=never --style=plain'
    alias catt='bat'
    alias cata='bat --show-all --paging=never --style=plain'
end

# cd
if command -q zoxide
    alias cd='z'
    alias cdd='z -'
end

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
