docker rm -f $(docker ps -a -q)

docker run -d --name mysql-juliano \
	-h mysql-juliano \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=juliano \
	-e MYSQL_DATABASE=juliano \
	mysql-juliano

sleep 3

docker run -d --name tomee-juliano \
	-h tomee-juliano \
	--link mysql-juliano:mysql-juliano \
        -p 8080:8080 tomee-juliano
