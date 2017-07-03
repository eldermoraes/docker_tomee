docker rmi tomee-soujava

cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-soujava .
