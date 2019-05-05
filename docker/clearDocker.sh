runningContainers=$(docker container ls -q) 

if [ ! -z "$runningContainers" ]
then
    echo "RUNNING CONTAINERS: $runningContainers"
    docker container stop $runningContainers
fi

docker system prune -a -f --volumes
