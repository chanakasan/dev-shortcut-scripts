
#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wdir="$1"
  local wdir_answer=""
  local script_name="install tailwind_cli"
  start_and_validate
  install_packages -D tailwindcss
  copy_module "tailwind_cli"
  finish_and_commit
}

main "$@"
