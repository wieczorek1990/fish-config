function fish_prompt --description 'Write out the prompt'
  set -l last_status $status
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal
  printf '%s ' (__informative_git_prompt)
  if not test $last_status -eq 0
    set_color $fish_color_error
  end
  echo -n '$ '
  set_color $fish_color_normal
end

