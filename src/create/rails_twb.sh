#!/usr/bin/env bash

set -e

source $devscript_path/lib/support/lib-create.sh

main() {
  local script=create/rails.sh
  local app_name="$1"
  start_and_validate
  create_app "rails7_sqlite_bootstrap"
  finish_and_commit
}

main "$@"
