require_param() {
  local a1=$1
}

create_vite_react_ts() {
  require_param app_name
  npm create vite@latest $app_name -- --template react-ts
}

create_vite_react_local() {
  require_param app_name
  copy_app_tpl "custom-vite-framework" $app_name
}

create_vite_react() {
  require_param app_name
  local url="git@github.com:chanakasan/custom-vite-framework.git"
  degit_tpl_repo $url $app_name
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

create_lara10_local() {
  copy_app_tpl "lara10-local" $app_name
}