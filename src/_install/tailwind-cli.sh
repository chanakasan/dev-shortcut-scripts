
#!/usr/bin/env bash

set -e

source $devscript_helpers

main() {
  local wd="$1"
  local wd_ans=""
  local script_name="install tailwind_cli"
  start_and_validate
  install_packages -D tailwindcss
  copy_module "tailwind_cli"
  finish_and_commit
}

main "$@"
