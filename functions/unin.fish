function unin
  for package in $argv
    set log ~/.packages/{$package}
    if test -f $log
      set packages (cat $log)
      sudo apt-get purge $packages
      if test $status -eq 0
        rm -f $log
      end
    else
      sudo apt-get --purge autoremove $package
    end
  end
end

