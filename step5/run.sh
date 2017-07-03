docker rm -f tomee-soujava || true
docker rm -f tomee-soujava1 || true
docker rm -f tomee-soujava2 || true
docker rm -f tomee-soujava3 || true
docker rm -f mysql-soujava || true
docker rm -f lb-soujava || true

docker run -d --name mysql-soujava \
	-h mysql-soujava \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=soujava \
	-e MYSQL_DATABASE=soujava \
	mysql-soujava

sleep 10

docker run -d --name tomee-soujava1 \
	-h tomee-soujava1 \
	--link mysql-soujava:mysql-soujava \
        -p 8081:8080 tomee-soujava

docker run -d --name tomee-soujava2 \
        -h tomee-soujava2 \
        --link mysql-soujava:mysql-soujava \
        -p 8082:8080 tomee-soujava

docker run -d --name tomee-soujava3 \
        -h tomee-soujava3 \
        --link mysql-soujava:mysql-soujava \
        -p 8083:8080 tomee-soujava

docker run -d --name lb-soujava \
	-p 80:80 \
	--link tomee-soujava1:tomee-soujava1 \
	--link tomee-soujava2:tomee-soujava2 \
	--link tomee-soujava3:tomee-soujava3 \
	--env-file ./env.list \
	jasonwyatt/nginx-loadbalancer
