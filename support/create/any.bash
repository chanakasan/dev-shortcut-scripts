degit_template_repo() {
  local url="$1"
  local dest="$2"
  npx degit --mode=git $url -- $dest
}

duplicate_template_folder() {
  local base_path="$HOME/groups/app_templates"
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
  local tpl=$1
  local cmd=create_$tpl
  # local is_cmd=$(is_function $cmd)
  if [ "$(is_function $cmd)" != "true" ]; then
    echo " tpl fn not found: $cmd"
    exit 1
  fi
  $cmd
}
