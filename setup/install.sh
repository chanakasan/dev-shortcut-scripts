#!/bin/bash

set -e

main() {
  local title="DevScript"
  local dir_name="devscript"
  local start_text='__devscript_start'
  local end_text='__devscript_end'
  local bashrc="$HOME/.bashrc"
  local devscript_path=$(get_root_path)/$dir_name
  echo " Installing - $title"
  remove_from_bashrc
  copy_to_bashrc
  echo ""
  echo " done"
  echo ""
}

get_root_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME/dotfiles
  fi
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export devscript_path='$devscript_path >> $bashrc
  echo 'export devscript_helpers=$devscript_path/lib/helpers.sh' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main

