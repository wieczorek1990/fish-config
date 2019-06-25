
function dumpdb
  set database $argv[1]
  set dir ~/Documents/backups

  mkdir -p "$dir"
  pg_dump -Fc -f "$dir/$database.custom" "$database"
end
