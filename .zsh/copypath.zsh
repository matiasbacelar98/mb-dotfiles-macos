copypath() {
  local target="${1:-$PWD}"
  local fullpath

  if [[ "$target" = /* ]]; then
    fullpath="$target"
  else
    fullpath="$PWD/$target"
  fi

  echo -n "$fullpath" | pbcopy
  echo "Path copied to clipboard: $fullpath"
}