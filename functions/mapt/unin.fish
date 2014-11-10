function unin
  for package in $argv
    set log ~/.packages/{$package}
    if test -f $log
      set packages (cat $log | tr '\n' ' ')
      sudo apt-get purge $packages
    else
      sudo apt-get --purge autoremove $package
    end
    rm -f $log
  end
end

