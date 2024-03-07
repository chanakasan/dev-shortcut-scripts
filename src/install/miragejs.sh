#!/usr/bin/env bash

set -e

source $devscript_path/support/install/index.sh

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install/miragejs"
  start_and_validate
  install_packages -D miragejs
  copy_module "miragejs"
  finish_and_commit
}

main "$@"
