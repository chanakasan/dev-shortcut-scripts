#!/usr/bin/env bash

set -e

source $nex_lib_path/lib-common.sh
source $nex_lib_path/lib-input.sh
source $nex_lib_path/lib-abort.sh
source $nex_lib_path/lib-questions.sh

# nx_create_new_laravel <name>
main() {
  local app_name="$1"
  # start
  echo " nx_create_new_laravel"
  if [ -z $app_name ]; then
    app_name=`haiku`
  fi
  echo " => app_name: $app_name"
  ask_input my_ans " confirm?"
  abort_if_not_true $(is_equal "y" $my_ans) "Error: Aborted by user"
  
  # generate
  composer create-project laravel/laravel $app_name

  # finish
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

main "$@"
