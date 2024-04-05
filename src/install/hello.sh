#!/usr/bin/env bash

set -e

source $devscript_path/lib/support/install/index.sh

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install/hello"
  echo script_name: $script_name
  echo done
  echo
}

main "$@"
