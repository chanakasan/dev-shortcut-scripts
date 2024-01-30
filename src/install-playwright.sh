#!/usr/bin/env bash

source $nex_script_helpers

start_and_validate() {
  print_line "=> Script: install playwright"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install playwright"
  print_line "=> done"
}

install_packages() {
  run_cmd npm init playwright@latest --yes -- --quiet --browser=chromium --lang=ts
  add_to_commit package.json package-lock.json
  add_to_commit playwright*
  add_to_commit tests*
  add_to_commit .gitignore
}

main() {
  local wd="$1"
  local wd_ans=""
  local flags=""
  start_and_validate
  install_packages
  copy_module "playwright"
  finish_and_commit
}

main "$@"

