set fish_greeting
set -x EDITOR vim
set -x PAGER less

set user_config ~/.config/fish/user_config.fish
if test -e $user_config
  source $user_config
end

