docker rmi -f tomee-jhonatan
docker rmi -f mysql-jhonatan

docker build -t tomee-jhonatan .

cd mysql
docker build -t mysql-jhonatan .

