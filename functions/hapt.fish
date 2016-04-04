function hapt
  set tmp (mktemp -d)
  set installed {$tmp}/installed
  set deleted {$tmp}/deleted
  set dpkg {$tmp}/dpkg
  list 'install' > $installed
  list '(remove|purge|autoremove)' > $deleted
  dpkg --get-selections |\
  grep -v 'deinstall' |\
  cut -f 1 > $dpkg
  while read package
    sed -i '0,/'$package'/{//d;}' $installed
  end < $deleted
  while read package
    set grep (grep --color=never '^'$package'$' $dpkg)
    if test -z $grep
      sed -i '0,/'$package'/{//d;}' $installed
    end
  end < $installed
  cat $installed
  rm -r $tmp
end

