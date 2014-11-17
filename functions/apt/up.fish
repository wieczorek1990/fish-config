function up
  update and clean
  set argc (count $argv)
  if test $argc = 1; and test $argv[1] = '-e'
    return
  end
end

