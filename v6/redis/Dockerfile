FROM redhat:6.8

COPY redis-3.2.9 /opt/redis-3.2.9

WORKDIR /opt/redis-3.2.9

RUN yum install gcc gcc-c++ make -y && \
    yum clean all && \
    make && \
    cd src && \
    make install PREFIX=/usr/local/redis && \
    mkdir /usr/local/redis/etc && \
    cp /opt/redis-3.2.9/redis.conf /usr/local/redis/etc && \
    echo "bind 0.0.0.0" >> /usr/local/redis/etc/redis.conf && \
    echo "export PATH=\$PATH:/usr/local/redis/bin" > /etc/profile.d/redis.sh && \
    source /etc/profile.d/redis.sh
    
EXPOSE 6379

CMD ["/usr/local/redis/bin/redis-server","/usr/local/redis/etc/redis.conf"]
