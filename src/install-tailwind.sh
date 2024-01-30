#!/usr/bin/env bash

source $nex_script_helpers

start_and_validate() {
  print_line "=> Script: install tailwind"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install tailwind"
  print_line "=> done"
}

install_packages() {
  run_npm_install -D tailwindcss postcss autoprefixer
  add_to_commit package.json package-lock.json
}

main() {
  local wd="$1"
  local wd_ans=""
  local flags="$2"
  start_and_validate
  install_packages
  copy_module "tailwind"
  finish_and_commit
}

main "$@"
