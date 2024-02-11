#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install app_module"
  start_and_validate
  copy_module "app_module"
  finish_and_commit
}


# _end
main "$@"
