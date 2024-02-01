#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local flags="$2"
  local wd_ans=""
  start_and_validate "install_formik"
  install_packages
  copy_module "formik"
  finish_and_commit "install_formik"
}

install_packages() {
  run_npm_install formik yup
  add_to_commit package.json package-lock.json
}


main "$@"
