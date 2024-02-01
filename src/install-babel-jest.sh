#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate "babel_jest"
  install
  copy_module "babel_jest"
  commit_and_finish "babel_jest"
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
