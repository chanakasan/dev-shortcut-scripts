create_vite_react_ts() {
  require_param app_name
  npm create vite@latest $app_name -- --template react-ts
}

create_vite_react() {
  require_param app_name
  npm create vite@latest $app_name -- --template react
}

create_rails7_sqlite() {
  local tpl_base=$HOME/railstpl/src
  rails new $app_name \
-m $tpl_base/new_app/starter/main.rb \
--database=sqlite3 \
--js esbuild \
--css tailwind
# --skip-bundle \
}

create_rails7_postgres() {
  local tpl_base=$HOME/railstpl/src
  rails new $app_name \
-m $tpl_base/new_app/starter/main.rb \
--database=postgresql \
--js esbuild \
--css tailwind
# --skip-bundle \
}

create_lara10() {
  composer create-project laravel/laravel $app_name
}
