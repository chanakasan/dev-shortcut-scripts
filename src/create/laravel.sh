#!/usr/bin/env bash

set -e

source $devscript_path/lib/support/create/index.sh

main() {
  local script=nx_create_laravel10
  local app_name="$1"
  start_and_validate
  create_app "lara10_local"
  finish_and_commit
}

main "$@"
