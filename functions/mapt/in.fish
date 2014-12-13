function in
  mkdir -p ~/.packages
  set as
  set force
  set argc (count $argv)
  set args
  set index 1
  while test $index -le $argc
    set arg $argv[$index]
    set next_index (math $index + 1)
    switch $arg
      case '-a' '--as'
        set as $argv[$next_index]
        set index $next_index
      case '-f'
        set force '-f'
      case '*'
        set args $args $arg
    end
    set index (math $index + 1)
  end
  for package in $args
    if test -z $as
      set filename $package
    else
      set filename $as
    end
    set log ~/.packages/{$filename}
    if not test -f $log; or test -n $as
      set packages (apt-get -s install $force $package |\
                    grep '^Inst' |\
                    cut -d ' ' -f 2)
      if test -n "$packages"
        echo $packages | tr ' ' '\n' > $log
      else
        return
      end
    end
  end
  sudo apt-get install $force $args
end

