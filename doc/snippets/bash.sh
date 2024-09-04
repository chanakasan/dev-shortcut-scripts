contains_option() {
  if [[ "$*" == *"_pg"* ]]; then
    echo use postgres
  fi
}

starts_with() {
  if [[ $1 == _* ]]; then
    echo starts with underscore
  fi
}
