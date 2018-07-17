#!/bin/bash
set -e

DUBBO_DIR='/opt/tomcat/webapps/ROOT/WEB-INF/dubbo.properties'

if [[ $zk_server ]]; then
  sed -i -r "s%([0-9]+\.){3}[0-9]+\:[0-9]+%${zk_server}%g" ${DUBBO_DIR}
fi

if [[ $root_passwd ]]; then
  sed -i -r "s%dubbo.admin.root.password=root%dubbo.admin.root.password=${root_passwd}%g" ${DUBBO_DIR}
fi

if [[ $guest_passwd ]]; then
  sed -i -r "s%dubbo.admin.guest.password=guest%dubbo.admin.guest.password=${guest_passwd}%g" ${DUBBO_DIR}
fi

#start tomcat
sh /opt/tomcat/bin/catalina.sh run

exec "$@"