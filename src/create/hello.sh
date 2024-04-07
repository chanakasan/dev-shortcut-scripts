#!/usr/bin/env bash

set -e

source $devscript_path/lib/support/lib-create.sh

main() {
  local script=create/hello.sh
  local app_name="$1"
  start
}

start() {
  echo " script: $script"
  echo " app_name = $app_name"
  echo
}

main "$@"
