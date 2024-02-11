#!/usr/bin/env bash

set -e

source $nex_lib_path/lib-common.sh
source $nex_lib_path/lib-input.sh
source $nex_lib_path/lib-abort.sh
source $nex_lib_path/lib-questions.sh

# nx_create_new_vite_react <name>
main() {
  local script=create_new_vite_react
  local app_name="$1"
  start_and_validate
  confirm_create
  create_app
  finish_and_commit
}

create_app() {
  npm create vite@latest $app_name -- --template react-ts
}

confirm_create() {
  ask_input my_ans " confirm?"
  abort_if_not_true $(is_equal "y" $my_ans) "Error: Aborted by user"
}

start_and_validate() {
  if [ -z $app_name ]; then
    app_name=`haiku`
  fi
  echo " $script"
  echo " => app_name: $app_name"
}

finish_and_commit() {
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

main "$@"
