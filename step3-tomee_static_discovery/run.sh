docker rm -f $(docker ps -a -q)

docker run -d --name mysql-soujava \
	-h mysql-soujava \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=soujava \
	-e MYSQL_DATABASE=soujava \
	mysql-soujava

sleep 3

docker run -d --name tomee-soujava1 \
	-h tomee-soujava1 \
	--link mysql-soujava:mysql-soujava \
	--network=soujava-network --ip 172.28.5.1 \
        -p 8081:8080 tomee-soujava

docker run -d --name tomee-soujava2 \
        -h tomee-soujava2 \
        --link mysql-soujava:mysql-soujava \
	--network=soujava-network --ip 172.28.5.2 \
        -p 8082:8080 tomee-soujava

docker run -d --name tomee-soujava3 \
        -h tomee-soujava3 \
        --link mysql-soujava:mysql-soujava \
	--network=soujava-network --ip 172.28.5.3 \
        -p 8083:8080 tomee-soujava

