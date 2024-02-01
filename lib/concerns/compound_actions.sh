run_npm_install() {
  local args=$@
  npm install $args
}


copy_module() {
  local name="$1"
  local base="$wd/modules"
  local modules_path=$HOME/modules
  local src_path=$modules_path/$name
  local dest_path=$base/$name
  run_cmd mkdir -p $dest_path
  run_cmd cp -r $src_path/* $dest_path
  add_to_commit $dest_path
}
