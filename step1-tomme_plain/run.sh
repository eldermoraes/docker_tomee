docker rm -f $(docker ps -a -q)

docker run -d --name tomee-soujava -p 8080:8080 tomee-soujava
