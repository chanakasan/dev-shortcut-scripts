validate_wd_git() {
  if [ -z "$wd" ]; then
    wd="$PWD"
  fi
  abort_if_not_true $(is_var_defined "wd") "var not defined: wd"
  abort_if_not_true $(is_var_defined "wd_ans") "var not defined: wd_ans"
  abort_if_not_true $(is_var_defined "script_name") "var not defined: script_name"
  abort_if_not_true `is_wd_exists` "incorrect param: <install_dir>"
  abort_if_true `is_git_has_untracked` "please commit changes first"
  ask_input wd_ans "=> $wd\n path correct ?"
  abort_if_not_true $(is_equal "y" $wd_ans) "aborted by user"
}
