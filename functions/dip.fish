
function dip
  docker ps
  read -P "Enter IP: " ip
  docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$ip"
end
