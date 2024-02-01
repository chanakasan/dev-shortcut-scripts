ask_input() {
  local -n answer_ref=$1
  local text="$2"
  printf "$text (y/n) "
  read _answer
  answer_ref="$_answer"
}

print_line() {
  echo "$@"
}

run_cmd() {
  local cmd=$@
  $cmd
}