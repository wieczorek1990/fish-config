set fish_function_path $fish_function_path (find ~/.config/fish/functions/* -type d)
set fish_greeting
set -x EDITOR vi
# Waiting for rvm team to fix PATH issue
set PATH ~/.linuxbrew/bin/ $PATH
complete -c download -a '(__fish_print_packages)'
complete -c purge -a '(__fish_print_packages)'
complete -c search -a '(__fish_print_packages)'
complete -c show -a '(__fish_print_packages)'
complete -c simi -a '(__fish_print_packages)'
complete -c simp -a '(__fish_print_packages)'
function fish_user_key_bindings
  bind \e\[3\;3~ kill-word
end
rvm default

