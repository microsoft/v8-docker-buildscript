#!/bin/sh
for container in $(docker ps -aq); do
	echo deleting container: $container
	docker rm $container
done

for image in $(docker images --format "{{.ID}}"); do
	echo  deleting $image
	docker rmi -f $image
done
