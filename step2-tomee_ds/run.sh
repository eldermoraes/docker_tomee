docker rm -f $(docker ps -a -q)

docker run -d --name mysql-soujava \
	-h mysql-soujava \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=soujava \
	-e MYSQL_DATABASE=soujava \
	mysql-soujava

sleep 3

docker run -d --name tomee-soujava \
	-h tomee-soujava \
	--link mysql-soujava:mysql-soujava \
        -p 8080:8080 tomee-soujava
