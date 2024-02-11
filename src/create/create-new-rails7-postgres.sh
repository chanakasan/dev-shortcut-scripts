main() {
  local script=create_new_rails7_postgres
  local app_name="$1"
  start_and_validate  
  create_app
  finish_and_commit
}

create_app() {
  rails new $app_name --skip-bundle \
    --database=postgresql
}

start_and_validate() {
  if [ -z $app_name ]; then
    app_name=`haiku`
  fi
  echo "$script"
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
