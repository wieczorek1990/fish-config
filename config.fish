set fish_function_path \
    ~/.config/fish/functions/*/ \
    $fish_function_path
set fish_greeting
set -x EDITOR vi
set -x JAVA_HOME /usr/lib/jvm/jdk1.8.0_25
set -x PAGER "/bin/sh -c \"col -b -x | vim - -c 'set ft=man nomod nonumber readonly' -c 'map q :q!<CR>'\""
for cmd in download purge search show simi simp in unin
  complete -c $cmd -a '(__fish_print_packages)'
end
rvm default
# PATH is in functions/vendor/rvm.fish because of rvm.fish bug

