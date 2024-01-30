#!/usr/bin/env bash

set -e

source $nex_lib_path/lib-common.sh
source $nex_lib_path/lib-input.sh
source $nex_lib_path/lib-abort.sh
source $nex_lib_path/lib-questions.sh

# nx_create_new_vite_react <name>
main() {
  app_name="$1"
  echo " create_new_vite_react"

  if [ -z $app_name ]; then
    app_name=`haiku`
  fi

  echo " => app_name: $app_name"
  ask_input my_ans " confirm?"
  abort_if_not_true $(is_equal "y" $my_ans) "Error: Aborted by user"
  
  npm create vite@latest $app_name -- --template react-ts
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

main "$@"
