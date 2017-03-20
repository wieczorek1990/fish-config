#!/bin/sh

function dpurge
	sudo docker stop (sudo docker ps -a -q)
	sudo docker rm --force (sudo docker ps -a -q)
	sudo docker rmi --force (sudo docker images -q
end

