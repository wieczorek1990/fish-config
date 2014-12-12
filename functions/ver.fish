function ver
  dpkg -s $argv | grep 'Version: ' | cut -d ' ' -f 2
end

