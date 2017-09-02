docker rm -f $(docker ps -a -q)

docker run -d --name mysql_lucas \
	-h mysql_lucas \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=lucas23 \
	-e MYSQL_DATABASE=lucas \
	mysql_lucas

sleep 3

docker run -d --name tomee_lucas \
	-h tomee_lucas \
	--link mysql_lucas:mysql_lucas \
        -p 8080:8080 tomee_lucas
