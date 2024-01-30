mark_installed() {
  touch $installed_file
}

check_installed() {
  if [ -f "$installed_file" ]; then
    echo "Error: Already installed"
    echo "Aborted"
    exit 255
  fi
}

