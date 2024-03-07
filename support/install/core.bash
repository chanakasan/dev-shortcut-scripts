print_line() {
  echo " $@"
}

run_cmd() {
  local cmd=$@
  $cmd
}

dirname__() {
  echo $(dirname "$0")
}
