#!/usr/bin/env bash

set -e

source $devscript_helpers

start_and_validate() {
  print_line "=> Script: install supabase"
  validate_wd_git
}

finish_and_commit() {
  commit_changes "script: install supabase"
  print_line "=> done"
}

install_packages() {
  run_npm_install @supabase/supabase-js
  add_to_commit package.json package-lock.json
}

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate
  install_packages
  copy_module "supabase"
  finish_and_commit
}

main "$@"
