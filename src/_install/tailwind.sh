#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install tailwind"
  start_and_validate
  install_packages -D tailwindcss postcss autoprefixer
  copy_module "tailwind"
  finish_and_commit
}

main "$@"
