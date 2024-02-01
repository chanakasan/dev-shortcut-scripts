#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install testing-library"
  start_and_validate
  install_packages -D @testing-library/react @testing-library/jest-dom @testing-library/user-event 
  finish_and_commit
}

main "$@"
