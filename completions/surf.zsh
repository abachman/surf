if [[ ! -o interactive ]]; then
    return
fi

compctl -K _surf surf

_surf() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(surf commands)"
  else
    completions="$(surf completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
