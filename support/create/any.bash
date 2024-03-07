degit_tpl_repo() {
  local url="$1"
  local dest="$2"
  npx degit --mode=git $url -- $dest
}

copy_app_tpl() {
  local base_path="$HOME/tpl"
  local folder_name="$1"
  local dest="$2"
  local path1=$base_path/$folder_name
  if [ ! -d "$path1" ]; then
    echo " folder not found: $path1"
    exit 1
  fi
  rsync -a --exclude .git $path1/ $dest
}

create_app() {
  confirm_create
  local tpl=$1
  local cmd=create_$tpl
  if [ "$(is_function $cmd)" != "true" ]; then
    echo " tpl fn not found: $cmd"
    exit 1
  fi
  $cmd
}
