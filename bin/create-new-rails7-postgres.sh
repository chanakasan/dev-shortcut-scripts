# create_new_rails7_postgres

main() {
  app_name="$1"
  start_and_validate  
  run_commands
  commit_and_finish
}

run_commands() {
  rails new $app_name --database=postgresql \
    --skip-bundle
}

start_and_validate() {
  echo " create_new_rails7_postgres"
  echo " => app_name: $app_name"

  if [ -z $app_name ]; then
    echo "app_name required"
    exit
  fi
}

commit_and_finish() {
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

main "$@"
