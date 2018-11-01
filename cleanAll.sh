#!/usr/bin/env bash


print_something_red () {
 printf "\033[1;31m"$1""
 printf "\033[0m\n"
 #
}


print_something_red "Kill_All"

#docker kill $(docker ps -q)

print_something_red "remove_components"
docker rm $(docker ps -qa --no-trunc --filter "status=exited")
docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')
docker volume rm $(docker volume ls -qf dangling=true)

print_something_red "remaining_components"

docker ps
docker images
docker volume ls
docker network ls
