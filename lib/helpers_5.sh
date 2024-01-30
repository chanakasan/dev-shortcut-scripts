insert_section_in_file() {
  local file="$1"
  local prefix="$2"
  local start_line='#__'"$prefix"'_start'
  local end_line='#__'"$prefix"'_end'
  insert_line_in_file $file " "
  insert_line_in_file $file $start_line
  insert_line_in_file $file "$3"
  insert_line_in_file $file "$4"
  insert_line_in_file $file "$5"
  insert_line_in_file $file "$6"
  insert_line_in_file $file $end_line
  insert_line_in_file $file " "
}

insert_line_in_file() {
  local file="$1"
  local line="$2"
  if [ -z "$line" ]; then
    echo "" > /dev/null
  else
    echo $line >> $file
  fi
}

remove_section_from_file() {
  local file="$1"
  local prefix="$2"
  sed -i '/#__'"$prefix"'_start/,/#__'"$prefix"'_end/{d}' $file
}