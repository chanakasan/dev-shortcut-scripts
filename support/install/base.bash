start_and_validate() {
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: $script_name"
  print_line "done"
  print_line
}

install_packages() {
  run_npm_install "$@"
  add_to_commit package.json package-lock.json
}

validate_wd_git() {
  if [ -z "$wdir" ]; then
    wdir="$PWD"
  fi
  abort_if_not_true $(is_var_defined "wdir") "var not defined: wdir"
  abort_if_not_true $(is_var_defined "wdir_answer") "var not defined: wdir_answer"
  abort_if_not_true $(is_var_defined "script_name") "var not defined: script_name"
  abort_if_not_true `is_wd_exists` "incorrect param: <install_dir>"
  abort_if_true `is_git_has_untracked` "please commit changes first"
  ask_input wdir_answer "=> $wdir\n confirm ?"
  abort_if_not_true $(is_equal "y" $wdir_answer) "aborted by user"
}
