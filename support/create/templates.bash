create_vite_react_ts() {
  require_param app_name
  npm create vite@latest $app_name -- --template react-ts
}

create_vite_react() {
  require_param app_name
  npm create vite@latest $app_name -- --template react
}

create_rails7_sqlite() {
  rails new $app_name \
--database=sqlite3 \
--js esbuild \
--css tailwind
# --skip-bundle \
}

create_rails7_postgres() {
  rails new $app_name \
--database=postgresql \
--js esbuild \
--css tailwind
# --skip-bundle \
}

create_lara10() {
  composer create-project laravel/laravel $app_name
}
