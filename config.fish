set fish_greeting
set -x EDITOR vi
set -x PAGER less

for cmd in download purge search show simi simp in unin
  complete -c $cmd -a '(__fish_print_packages)'
end

set user_config ~/.config/fish/user_config.fish
if test -e $user_config
  source $user_config
end

