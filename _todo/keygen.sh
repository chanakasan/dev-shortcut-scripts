export LC_CTYPE=C
echo $(< /dev/urandom tr -dc A-Za-z0-9 | head -c32)
