function dsocat
  sudo echo 'dsocat'
  sudo socat TCP-LISTEN:2376,range=127.0.0.1/32,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock &
end

