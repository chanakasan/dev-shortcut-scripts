#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install formik"
  start_and_validate
  install_packages formik yup
  copy_module "formik"
  finish_and_commit
}

main "$@"
