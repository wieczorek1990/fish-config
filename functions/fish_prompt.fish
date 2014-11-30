function fish_prompt --description 'Write out the prompt'
  set_color $fish_color_cwd
  echo -n (whoami)' '(prompt_pwd)' '
  set_color normal
  echo -n '$ '
  set_color $fish_color_normal
end

