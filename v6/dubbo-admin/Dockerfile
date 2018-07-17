FROM 10.13.0.63:5000/redhat:6.8

# set Java environment
COPY jdk /usr/local/jdk
ENV JAVA_HOME /usr/local/jdk
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin

# set tomcat
COPY tomcat /opt/tomcat

EXPOSE 8080

# set dubbo-admin environment
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
