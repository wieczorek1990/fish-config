function list
  cat /var/log/apt/history.log |\
  grep --color=never -v '\-o APT::Status-Fd=4 \-o APT::Keep-Fds::=5 \-o APT::Keep-Fds::=6' |\
  egrep --color=never 'Commandline: apt-get.* '$argv[1] |\
  sed -r 's/Commandline: apt-get//;s/ '$argv[1]'//' |\
  unopts |\
  tr ' ' '\n' |\
  sed '/^$/d'
end

