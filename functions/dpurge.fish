function dpurge
  sudo docker stop (sudo docker ps -a -q)
  sudo docker rm --force (sudo docker ps -a -q)
  sudo docker rmi --force (sudo docker images -q)
  sudo docker volume rm (sudo docker volume list | tr -s ' ' | cut -f2 -d' ')
end

