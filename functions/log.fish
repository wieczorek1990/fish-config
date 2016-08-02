function log
  cat $argv[1] | sed 's/\\\\n/\n/g'
end

