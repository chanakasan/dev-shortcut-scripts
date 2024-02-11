main() {
  local base_path=$devscript_path/src/create
  local tpl=$(get_tpl "$@")
  local app_name=$(get_app_name "$1")
  local cmd=$base_path/$tpl
  if [ "$app_name" == "help" ]; then
    print_usage
    exit 0
  fi
  if [ -f "$cmd" ]; then
    "$cmd" "$app_name"
  else
    echo "not found: nex new rails $1"
  fi
}

get_app_name() {
  if [[ $1 == "_h" ]]; then
    echo help
  elif [[ $1 == _* ]]; then
    echo
  else
    echo $1
  fi
}

get_tpl() {
  if [[ "$*" == *"_postgres"* ]]; then
      echo create-new-rails7-postgres.sh
  else
      echo create-new-rails7-sqlite.sh
  fi
}

print_usage() {
  echo " Usage:"
  echo "   nex new rails <app_name> _postgres|_sqlite"
}

is_function() {
  local a1="$1"
  if [[ $(type -t $a1 ) == function ]]; then
    echo true
  else
    echo false
  fi
}

_new_rails_sqlite() {
  local cmd=$base_path/
}

_new_rails_postgres() {
  local cmd=$base_path/
}


main "$@"