#!/usr/bin/env bash

set -e

source $devscript_path/support/create/index.sh

main() {
  local script=create/rails_pg.sh
  local app_name="$1"
  start_and_validate
  create_app "rails7_postgres"
  finish_and_commit
}

main "$@"
