#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install supabase"
  start_and_validate
  install_packages @supabase/supabase-js
  copy_module "supabase"
  finish_and_commit
}

main "$@"
