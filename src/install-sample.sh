#!/usr/bin/env bash

set -e

source $devscript_helpers

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

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  if [ -z "$wd" ]; then
    wd="$pwd"
  fi
  start_and_validate
  install_packages
  copy_module "sample"
  finish_and_commit
}

main "$@"
