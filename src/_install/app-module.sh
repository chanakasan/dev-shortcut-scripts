#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install app_module"
  start_and_validate
  copy_module "app_module"
  finish_and_commit
}


# _end
main "$@"
