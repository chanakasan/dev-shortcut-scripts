
add_to_commit() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  git add $@
}

commit_changes() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  git commit -m "$1"
}