#!/usr/bin/env bash

set -e

source $devscript_path/support/create/index.sh

main() {
  local script=create/hello.sh
  local app_name="$1"
  echo app_name = $app_name
  echo done
  echo
}

main "$@"
