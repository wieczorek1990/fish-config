function sel
  cat $argv | xsel -b
  cat $argv | xsel -p
end

