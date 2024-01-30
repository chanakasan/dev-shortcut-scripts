dirname__() {
  echo $(dirname "$0")
}

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

is_git_has_modified() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  if [ "$(is_git_repo)" == "false" ]; then
    echo "false"
  elif [ -z "$(git diff)" ]; then
    echo "false"
  else
    echo "true"
  fi
}

is_git_has_untracked() {
  if [ "$(is_skip_git)" == "true" ]; then
    return
  fi
  if [ $(is_git_repo) == "false" ]; then
    echo "false"
  elif [ -z "$(git status -s)" ]; then
    echo "false"
  else
    echo "true"
  fi
}

is_git_repo() {
  if [ -d ".git" ]; then
    echo "true"
  else
    echo "false"
  fi
}

is_skip_git() {
  if [ $(is_git_repo) == "false" ]; then
    echo "true"
  elif [ "$flags" == "nogit" ]; then
    echo "true"
  else
    echo "false"
  fi
}

abort_if_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" == "true" ]; then
    echo $msg
    exit 1
  fi
}

abort_if_not_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" != "true" ]; then
    echo $msg
    exit 1
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

