#!/usr/bin/env bash

set -e

source $devscript_path/lib/support/install/index.sh

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install/miragejs"
  start_and_validate
  install_packages -D miragejs
  copy_module "miragejs"
  finish_and_commit
}

main "$@"
