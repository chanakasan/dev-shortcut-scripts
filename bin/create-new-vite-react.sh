create_new_vite_react() {
  app_name="$1"
  echo " create_new_vite_react"
  echo " => app_name: $app_name"

  if [ -z $app_name ]; then
    echo "app_name required"
    exit
  fi
  
  npm create vite@latest $app_name -- --template react-ts
  cd $app_name
  git init
  git add .
  git commit -m "first commit"
  echo 
  echo " => done"
}

create_new_vite_react "$@"
