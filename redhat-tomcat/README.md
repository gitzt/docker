# tomcat
docker build --rm -t redhat-with-tomcat .

docker run -d --name tomcat -p 8080:8080 \
-v $PWD/logs:/opt/tomcat/logs \
-v $PWD/webapps:/opt/tomcat/webapps \
redhat-with-tomcat
