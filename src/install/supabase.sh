#!/usr/bin/env bash

set -e

source $devscript_path/support/install/index.sh

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install/supabase"
  start_and_validate
  install_packages @supabase/supabase-js
  copy_module "supabase"
  finish_and_commit
}

main "$@"
