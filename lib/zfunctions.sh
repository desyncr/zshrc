zis_plugin() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/plugins/$name/$name.plugin.zsh \
    || test -f $base_dir/plugins/$name/_$name
}

zload_plugin() {
  plugin=$1
  ZSH_LOADED_PLUGIN="$ZSH_LOADED_PLUGIN $plugin"
  if zis_plugin $ZSH_CUSTOM $plugin; then
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif zis_plugin $ZSH $plugin; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
}

zload_plugins() {
  for i; do
    zload_plugin $i
  done
}
