# example_new_tech_app

main() {
  app_name="$1"
  start_and_validate  
  run_commands
  finish_and_commit
}

run_commands() {
  npm create vite@latest $app_name -- --template react-ts
}

start_and_validate() {
  echo " example_new_tech_app"
  echo " => app_name: $app_name"

  if [ -z $app_name ]; then
    echo "app_name required"
    exit
  fi
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
