is_var_defined() {
  local -n candidate_ref=$1
  if [ -z "${candidate_ref+foo}" ]; then
    echo "false"
  else
    echo "true"
  fi
}

is_wd_exists() {
  if [ -z $wd ]; then
    echo "false"
  elif [ -d $wd ]; then
    echo "true"
  else
    echo "false"
  fi
}

is_equal() {
  local v1="$1"
  local v2="$2"
  if [ "$v1" == "$v2" ]; then
    echo "true"
  else
    echo "false"
  fi
}

