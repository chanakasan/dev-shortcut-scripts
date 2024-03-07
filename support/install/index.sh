tmp_base_path=$devscript_path/support/install

# source $tmp_base_path/imports.sh
for f in $tmp_base_path/*.bash; do
  source $f
done
