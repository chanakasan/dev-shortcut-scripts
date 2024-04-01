#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install sample"
  start_and_validate
  install
  copy_module "sample"
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

# _end
main "$@"
