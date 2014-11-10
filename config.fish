set fish_function_path $fish_function_path ~/.config/fish/functions/*/
set fish_greeting
set -x EDITOR vi
set -x NVM_DIR ~/.nvm
set -x JAVA_HOME /usr/lib/jvm/jdk1.9.0
# Waiting for rvm team to fix PATH issue
set PATH ~/.linuxbrew/bin ~/.nvm /opt/android-sdk-linux/tools $PATH
for cmd in download purge search show simi simp
  complete -c $cmd -a '(__fish_print_packages)'
end
rvm default

