#!/usr/bin/env bash

source $nex_script_helpers

start_and_validate() {
  print_line "=> Script: install testing-library"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install testing-library"
  print_line "=> done"
}

install_packages() {
  run_npm_install -D @testing-library/react @testing-library/jest-dom @testing-library/user-event 
  add_to_commit package.json package-lock.json
}

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate
  install_packages
  finish_and_commit
}

main "$@"
