#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local flags="$2"
  local wdir_answer=""
  local script_name="install ts_jest"
  start_and_validate
  install
  copy_module ts_jest
  finish_and_commit
}

install() {
  run_npm_install -D jest ts-jest @types/jest
  run_npm_install -D jest-environment-jsdom jest-spec-reporter
  add_to_commit package.json package-lock.json
}

main "$@"
