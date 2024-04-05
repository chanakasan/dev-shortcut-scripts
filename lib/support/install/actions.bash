abort_if_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" == "true" ]; then
    echo " Error: $msg"
    echo " aborting"
    exit 1
  fi
}

abort_if_not_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" != "true" ]; then
    echo " Error: $msg"
    echo " aborting"
    exit 1
  fi
}

ask_input() {
  local -n answer_ref=$1
  local text="$2"
  printf " $text (y/n) "
  read _answer
  answer_ref="$_answer"
}

run_npm_install() {
  local args=$@
  run_cmd npm install $args
}
