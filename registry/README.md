
# 生成密码
docker run --rm --entrypoint htpasswd registry -Bbn admin admin > /data/registry/auth/htpasswd

# registry
docker run -d -p 5000:5000 --name registry \
-v /data/registry/config.yml:/etc/docker/registry/config.yml \
-v /data/registry:/var/lib/registry \
-v /data/registry/auth:/auth \
--restart=always \
registry


