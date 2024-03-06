#!/usr/bin/env bash

set -e

source $devscript_path/support/create/index.sh

main() {
  local script=nx_create_laravel10
  local app_name="$1"
  start_and_validate
  confirm_create
  create_app "laravel10"
  finish_and_commit
}

main "$@"
