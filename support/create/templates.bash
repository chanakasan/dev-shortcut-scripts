create_vite_react_ts() {
  require_param app_name
  npm create vite@latest $app_name -- --template react-ts
}

create_vite_react() {
  require_param app_name
  npm create vite@latest $app_name -- --template react
}

create_rails7_sqlite() {
  local tpl_base=$devscript_path/src/_tpl/rails
  rails new $app_name \
-m $tpl_base/starter/main.rb \
# --skip-bundle \
--database=sqlite3 \
--js esbuild \
--css tailwind
}

create_rails7_postgres() {
  rails new $app_name \
-m $tpl_base/starter/main.rb \
# --skip-bundle \
--database=postgresql \
--js esbuild \
--css tailwind
}

create_lara10() {
  composer create-project laravel/laravel $app_name
}
