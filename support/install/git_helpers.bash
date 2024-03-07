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

is_git_has_modified() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  if [ "$(is_git_repo)" == "false" ]; then
    echo "false"
  elif [ -z "$(git diff)" ]; then
    echo "false"
  else
    echo "true"
  fi
}

is_git_has_untracked() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  if [ $(is_git_repo) == "false" ]; then
    echo "false"
  elif [ -z "$(git status -s)" ]; then
    echo "false"
  else
    echo "true"
  fi
}

is_git_repo() {
  if [ -d ".git" ]; then
    echo "true"
  else
    echo "false"
  fi
}

is_skip_git() {
  if [ $(is_git_repo) == "false" ]; then
    echo "true"
  elif [ "$flags" == "nogit" ]; then
    echo "true"
  else
    echo "false"
  fi
}
