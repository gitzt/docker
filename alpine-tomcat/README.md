
docker build --rm -t alpine-with-tomcat .

docker run -d --name tomcat -p 8080:8080 \
-v $PWD/logs:/opt/tomcat/logs \
-v $PWD/webapps:/opt/tomcat/webapps \
alpine-with-tomcat
