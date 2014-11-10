function psu
  ps -U root -u root -N |\
  sed 's/^ *//' |\
  tr -s ' ' '\t' |\
  cut -f 1,4 |\
  column
end

