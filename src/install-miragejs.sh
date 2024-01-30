#!/usr/bin/env bash

source $nex_script_helpers

start_and_validate() {
  print_line "=> Script: install miragejs"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install miragejs"
  print_line "=> done"
}

install_packages() {
  run_npm_install -D miragejs
  add_to_commit package.json package-lock.json
}

copy_files() {
  local base="$wd/modules"
  local name="miragejs"
  local dest_path=$base/$name
  run_cmd mkdir -p $base
  run_cmd npx degit --mode=git NexParts/module-miragejs-1 -- $dest_path
  add_to_commit $dest_path
}

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate
  install_packages
  copy_files
  finish_and_commit
}

main "$@"
