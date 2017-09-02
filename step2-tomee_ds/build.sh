docker rmi -f tomee-juliano
docker rmi -f mysql-juliano

# cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-juliano .

cd mysql
docker build -t mysql-juliano .
