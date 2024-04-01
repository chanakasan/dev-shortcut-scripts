create_file_2() {
  local file_1=$wdir/styles.css
  print_line "=> create tailwind.css"
  write_file $file_1 "$(cat <<TXT
@tailwind base;
@tailwind components;
@tailwind utilities;
TXT
)"
  add_to_commit $file_1
}