#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install playwright"
  start_and_validate
  install
  copy_module "playwright"
  finish_and_commit
}

install() {
  run_cmd npm init playwright@latest --yes -- --quiet --browser=chromium --lang=ts
  add_to_commit package.json package-lock.json
  add_to_commit playwright*
  add_to_commit tests*
  add_to_commit .gitignore
}


main "$@"

