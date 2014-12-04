set fish_function_path \
    ~/.config/fish/functions/*/ \
    $fish_function_path
set fish_greeting
set -x EDITOR vi
set -x JAVA_HOME /usr/lib/jvm/jdk1.8.0_25
set -x PATH \
       /opt/libwebp/bin/ \
       /opt/android-sdk-linux/tools/ \
       /opt/android-sdk-linux/platform-tools/ \
       $PATH
set -x TERM screen-256color
set -x TERMINFO ~/.terminfo
for cmd in download purge search show simi simp in unin
  complete -c $cmd -a '(__fish_print_packages)'
end

