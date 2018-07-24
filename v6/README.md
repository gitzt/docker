
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

参数：  
zk_server：必填，格式为 IP：PORT  
root_passwd：选填，默认为root/root  
guest_passwd：选填：默认为guest/guest

# redis
docker build --rm -t 10.13.0.63:5000/redis:3.2.9 .

docker run -d --name redis -p 6379:6379 \
-v $PWD/redis.conf:/usr/local/redis/etc/redis.conf \
10.13.0.63:5000/redis:3.2.9




