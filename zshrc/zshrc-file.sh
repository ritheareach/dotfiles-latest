# Filename: ~/github/dotfiles-latest/zshrc/zshrc-file.sh

# #############################################################################
# Do not delete the `UNIQUE_ID` line below, I use it to backup original files
# so they're not lost when my symlinks are applied
# UNIQUE_ID=do_not_delete_this_line
# #############################################################################

# The AUTO-PULL SECTION has been removed
# now changes have to be explicitly pulled with the alias 'pulldeez' that pulls
# the changes and then sources the zshrc file

source ~/github/dotfiles-latest/zshrc/zshrc-common.sh

# Detect OS
case "$(uname -s)" in
Darwin)
  OS='Mac'
  ;;
Linux)
  OS='Linux'
  ;;
*)
  OS='Other'
  ;;
esac

# macOS-specific configurations
if [ "$OS" = 'Mac' ]; then
  source ~/github/dotfiles-latest/zshrc/zshrc-macos.sh
# Linux (Debian)-specific configurations
elif [ "$OS" = 'Linux' ]; then
  source ~/github/dotfiles-latest/zshrc/zshrc-linux.sh
fi


# Created by `pipx` on 2025-07-02 07:40:33
export PATH="$PATH:/Users/reach/.local/bin"
alias python=python3
alias pip=pip3
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/reach/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

alias claude="/Users/reach/.claude/local/claude"
