print_line() {
  echo "$@"
}

run_npm_install() {
  local args=$@
  npm install $args
}

run_cmd() {
  local cmd=$@
  $cmd
}

ask_input() {
  local -n answer_ref=$1
  local text="$2"
  printf "$text (y/n) "
  read _answer
  answer_ref="$_answer"
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

write_file() {
  local path="$1"
  local str="$2"
  echo $path
  tee $path >/dev/null <<STR
$str
STR
}