command_not_found_handler() {
  local cmd="$1"
  local suggestion

  suggestion=$(brew search "^$cmd$" | grep -E "^$cmd$")

  if [[ -n "$suggestion" ]]; then
    echo "The command '$cmd' is not installed, but it can be installed via Homebrew:"
    echo "  brew install $suggestion"
  else
    echo "$cmd: command not found"
  fi
}