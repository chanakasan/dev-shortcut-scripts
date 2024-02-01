#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate "babel_jest"
  install_packages
  copy_module "babel_jest"
  commit_and_finish "babel_jest"
}

install_packages() {
  run_npm_install -D jest babel-jest @babel/core @babel/preset-env @babel/preset-react
  run_npm_install -D jest-environment-jsdom jest-spec-reporter
  add_to_commit package.json package-lock.json
}

main "$@"
