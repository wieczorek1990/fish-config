for cmd in download purge search show simi simp
  complete -c $cmd -a '(__fish_print_packages)'
end
set fish_function_path \
    ~/.config/fish/functions/*/ \
    $fish_function_path
set fish_greeting
set -x EDITOR vi
set -x JAVA_HOME /usr/lib/jvm/jdk1.9.0
set -x NVM_DIR ~/.nvm
# Waiting for rvm team to fix PATH issue
set PATH \
    ~/.nvm \
    ~/.nvm/current/bin \
    /opt/libwebp/bin \
    /opt/android-sdk-linux/tools \
    $PATH
source ~/.nvm-fish/nvm.fish
rvm default

