source $nex_lib_path/lib-base.sh
source $nex_lib_path/lib-input.sh
source $nex_lib_path/lib-actions.sh
source $nex_lib_path/lib-predicates.sh

start_and_validate() {
  if [ -z $app_name ]; then
    app_name=`haiku`
  fi
  # require_param script
  echo " => app_name: $app_name"
}

confirm_create() {
  ask_input answer " confirm?"
  abort_if_not_true $(is_equal "y" $answer) "Error: Aborted by user"
}

finish_and_commit() {
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

