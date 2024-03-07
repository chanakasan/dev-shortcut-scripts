create_react_local() {
  require_param app_name
  copy_app_tpl "custom-vite-framework" $app_name
}

create_react_custom() {
  require_param app_name
  local url="git@github.com:chanakasan/custom-vite-framework.git"
  degit_tpl_repo $url $app_name
}

create_lara10_local() {
  copy_app_tpl "lara10-local" $app_name
}
