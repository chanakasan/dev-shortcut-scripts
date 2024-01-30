#!/usr/bin/env bash

source $nex_script_helpers

start_and_validate() {
  print_line "=> Script: install ts-jest"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install ts-jest"
  print_line "=> done"
}

install_packages() {
  run_npm_install -D jest ts-jest @types/jest
  add_to_commit package.json package-lock.json
}

copy_files() {
  local dest_path=$wd
  run_cmd cp -r $nex_script_path/tpl//* $dest_path
  add_to_commit $dest_path
}

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate
  install_packages
  copy_module "ts-jest"
  finish_and_commit
}

main "$@"
