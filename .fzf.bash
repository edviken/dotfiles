#!/usr/bin/env bash
set e

# Setup fzf
# ---------
fzf_base="${HOME}/.dotfiles/fzf"
fzf_base_esq=$(printf %q "$fzf_base")

if [[ ! "$PATH" == *$fzf_base_esq/bin* ]]; then
  PATH="${PATH:+${PATH}:}$fzf_base/bin"
fi

eval "$(fzf --bash)"
