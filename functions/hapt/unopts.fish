function unopts
  cat |\
  sed -r 's/ --[^ ]+//g;s/ -[^ ]+//g'
end

