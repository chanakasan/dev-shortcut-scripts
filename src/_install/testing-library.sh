#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install testing-library"
  start_and_validate
  install_packages -D @testing-library/react @testing-library/jest-dom @testing-library/user-event 
  finish_and_commit
}

main "$@"
