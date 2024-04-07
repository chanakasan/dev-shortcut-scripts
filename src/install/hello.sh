#!/usr/bin/env bash

set -e

source $devscript_support/lib-install.sh

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install/hello"
  start
}

start() {
  echo " script_name: $script_name"
  echo " Hello Devscript !"
  echo
}

main "$@"
