# Create the network 

docker network create app_external_network
docker network create jenkins


docker run --name jenkins-docker --rm --detach  --privileged --network jenkins --network-alias docker --volume jenkins-data:/var/jenkins_home  --publish 2376:2376  docker:dind --storage-driver overlay2
