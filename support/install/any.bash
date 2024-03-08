copy_module() {
  local name="$1"
  local base="$wd/modules"
  local modules_path=$HOME/lib/modules
  local src_path=$modules_path/$name
  local dest_path=$base
  run_cmd mkdir -p $dest_path
  # run_cmd cp -r $src_path $dest_path/
  rsync -a --exclude .git $src_path $dest_path
  add_to_commit $dest_path
}

degit_module() {
  local name="$1"
  local base="$wd/modules"
  local dest_path=$base/$name
  local url=NexParts/module-$name
  run_cmd mkdir -p $base
  run_cmd npx degit --mode=git $url -- $dest_path
  add_to_commit $dest_path
}
