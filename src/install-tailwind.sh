#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install tailwind"
  start_and_validate
  install_packages -D tailwindcss postcss autoprefixer
  copy_module "tailwind"
  finish_and_commit
}

main "$@"
