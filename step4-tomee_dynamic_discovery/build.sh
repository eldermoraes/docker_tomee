docker rmi -f tomee-soujava
docker rmi -f mysql-soujava

cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-soujava .

cd mysql
docker build -t mysql-soujava .
