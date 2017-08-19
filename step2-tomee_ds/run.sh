docker rm -f $(docker ps -a -q)

docker run -d --name mysql-jhonatan \
	-h mysql-jhonatan \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=teste \
	-e MYSQL_DATABASE=jhonatan \
	mysql-jhonatan

sleep 3

docker run -d --name tomee-jhonatan \
	-h tomee-jhonatan \
	--link mysql-jhonatan:mysql-jhonatan \
        -p 8080:8080 tomee-jhonatan

