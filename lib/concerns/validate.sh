validate_wd_git() {
  abort_if_not_true $(is_var_defined "wd") "wd var not defined"
  abort_if_not_true $(is_var_defined "wd_ans") "wd_ans var not defined"
  abort_if_not_true $(is_var_defined "flags") "flags var not defined"
  abort_if_not_true `is_wd_exists` "Error: Incorrect param: <install_dir>"
  abort_if_true `is_git_has_untracked` "Error: Please commit changes first"
  ask_input wd_ans "=> Correct path: $wd ?"
  abort_if_not_true $(is_equal "y" $wd_ans) "Error: Aborted by user"
}