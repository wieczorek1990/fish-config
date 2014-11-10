function in
  mkdir -p ~/.packages
  set as
  set force
  for arg in $args
    switch $arg
      case -a --as
        set as $argv[2]; shift; shift
      case -f
        set force -f; shift
      case --
        shift; break
    end
  end
  for package in $argv
    if test -z $package
      set filename $package
    else
      set filename $as
    end
    set log ~/.packages/{$filename}
    if not test -f $log; or test -n $as
      set packages (apt-get -s install $force $package |\
                    grep '^Inst' |\
                    cut -d ' ' -f 2)
      if test -n $packages
        echo $packages > $log
      end
    end
  end
  sudo apt-get install $force $argv
end

