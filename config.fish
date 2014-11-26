set fish_function_path \
    ~/.config/fish/functions/*/ \
    $fish_function_path
set fish_greeting
set -x EDITOR vi
set -x JAVA_HOME /usr/lib/jvm/jdk1.8.0_25
for cmd in download purge search show simi simp
  complete -c $cmd -a '(__fish_print_packages)'
end
rvm default
# PATH is in functions/vendor/rvm.fish because of rvm.fish bug

