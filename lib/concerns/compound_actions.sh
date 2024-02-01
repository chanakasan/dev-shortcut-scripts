run_npm_install() {
  local args=$@
  run_cmd npm install $args
}

copy_module() {
  local name="$1"
  local base="$wd/modules"
  local modules_path=$HOME/modules
  local src_path=$modules_path/$name
  local dest_path=$base/$name
  run_cmd mkdir -p $dest_path
  # run_cmd cp -r $src_path/* $dest_path
  run_cmd ln -s $src_path $dest_path
  add_to_commit $dest_path
}

clone_module() {
  local name="$1"
  local base="$wd/modules"
  local dest_path=$base/$name
  run_cmd mkdir -p $base
  run_cmd npx degit --mode=git NexParts/module-supabase-1 -- $dest_path
  add_to_commit $dest_path
}

start_and_validate() {
  local script_name="$1"
  print_line " => Running: $script_name"
  validate_wd_git
}

commit_and_finish() {
  local script_name="$1"
  commit_changes "script: $script_name"
  print_line " done"
  print_line
}