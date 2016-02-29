function df
  command docker commit (docker ps -lq) $argv
end

