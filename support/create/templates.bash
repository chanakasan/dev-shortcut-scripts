create_vite_react_ts() {
  require_param app_name
  npm create vite@latest $app_name -- --template react-ts
}

create_vite_react() {
  require_param app_name
  npm create vite@latest $app_name -- --template react
}

create_rails7_sqlite() {
  require_param app_name
  rails new $app_name --skip-bundle \
    --database=sqlite3
}

create_rails7_postgres() {
  rails new $app_name --skip-bundle \
    --database=postgresql
}

create_lara10() {
  composer create-project laravel/laravel $app_name
}
