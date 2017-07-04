docker rm -f tomee-soujava || true
docker rm -f mysql-soujava || true

docker run -d --name tomee-soujava -p 8080:8080 tomee-soujava
