#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install formik"
  start_and_validate
  install_packages formik yup
  copy_module "formik"
  finish_and_commit
}

main "$@"
