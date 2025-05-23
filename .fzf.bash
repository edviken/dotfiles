# Setup fzf
# ---------
fzf_base="~/.dotfiles/fzf"
fzf_base_esq=$(printf %q "$fzf_base")

if [[ ! "$PATH" == *$fzf_base_esc/bin* ]]; then
  PATH="${PATH:+${PATH}:}$fzf_base/bin"
fi

eval "$(fzf --bash)"
