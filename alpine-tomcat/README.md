
# openjre
docker build --rm -t openjre7 -f /openjdk7/Dockerfile .

# tomcat
docker build --rm -t alpine-with-tomcat .

docker run -d --name tomcat -p 8080:8080 \
-v $PWD/logs:/opt/tomcat/logs \
-v $PWD/webapps:/opt/tomcat/webapps \
alpine-with-tomcat
