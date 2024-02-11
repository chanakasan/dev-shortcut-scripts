#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install babel_jest"
  start_and_validate
  install
  copy_module "babel_jest"
  finish_and_commit
}

install() {
  s1="jest babel-jest @babel/core"
  s2="@babel/preset-env @babel/preset-react"
  s3="jest-environment-jsdom jest-spec-reporter"
  dev_list="$s1 $s2 $s3"
  echo $dev_list
  exit 1
  install_packages -D $dev_list
}

main "$@"
