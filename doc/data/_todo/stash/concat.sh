_nex_script_2() {
  local old_ifs="$IFS"
  IFS='-'
  local partial_name="$*"
  IFS=$old_ifs
  local full_script_name=nex-$partial_name.sh
  echo "=> Running $full_script_name"
  bash $nex_script_path/src/$full_script_name
}