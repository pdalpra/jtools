if [[ ! -o interactive ]]; then
    return
fi

compctl -K _jtools jtools

_jtools() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(jtools commands)"
  else
    completions="$(jtools completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
