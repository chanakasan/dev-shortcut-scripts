#!/usr/bin/env bash

set -e

source $devscript_path/support/create/index.sh

main() {
  local script=nx_create_react
  local app_name="$1"
  start_and_validate
  create_app "vite_react_local"
  finish_and_commit
}

main "$@"
