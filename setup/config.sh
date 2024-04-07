# temp
script_dir=$(dirname $0)
root_path=$HOME/dotfiles
tpl_text=$(cat $script_dir/bashrc.tpl)

# paths
this_plugin_name=devscript.nexplugin
this_plugin_path=$root_path/$this_plugin_name

# bashrc
bashrc="$HOME/.bashrc"
this_start_text='__devscript_start'
this_end_text='__devscript_end'
this_middle_text="${tpl_text//__s1__/$this_plugin_path}"
