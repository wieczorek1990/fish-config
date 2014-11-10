function installed
  set argc (count $argv)
  if argc != 1
    echo 'Usage: installed regex'
    exit 1
  end
  dpkg --get-selections |\
  grep -v 'deinstall' |\
  cut -f 1 |\
  grep '^'argv[1]'$'
end

