
function fish_prompt --description 'Echoes the prompt'
  set_color $fish_color_cwd
  echo -n (whoami)' '(prompt_pwd)' '
  set_color normal
  echo -n '$ '
  set_color $fish_color_normal
end
