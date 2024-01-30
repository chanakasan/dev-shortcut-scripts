#!/usr/bin/env bash

source $devscript_helpers

start_and_validate() {
  print_line "=> Script: install babel-jest"
  validate_wd_git
}

commit_and_finish() {
  commit_changes "script: install babel-jest"
  print_line "=> done"
}

install_packages() {
  run_npm_install -D jest babel-jest @babel/core @babel/preset-env @babel/preset-react
  run_npm_install -D jest-environment-jsdom jest-spec-reporter
  add_to_commit package.json package-lock.json
}

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate
  install_packages
  copy_module "babel-jest"
  commit_and_finish
}

main "$@"
