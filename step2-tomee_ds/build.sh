docker rmi -f tomee_lucas
docker rmi -f mysql_lucas

docker build -t tomee_lucas .

cd mysql
docker build -t mysql_lucas .
