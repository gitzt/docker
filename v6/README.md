
# zookeeper
docker build --rm -t 10.13.0.63:5000/zookeeper:3.4.12 .

docker run -d --name zk -p 2180:2180 --net=host 10.13.0.63:5000/zookeeper:3.4.12

# dubbo-admin
docker build --rm -t 10.13.0.63:5000/dubbo-admin .

docker run -d --name dubbo-admin -p 8080:8080 \
-e "zk_server=10.36.0.143:2181" \
-e "root_passwd=" \
-e "guest_passwd=" \
10.13.0.63:5000/dubbo-admin




