FROM 10.13.0.63:5000/redhat:6.8

# Add Java tomcat
COPY jdk /usr/local/jdk
COPY zookeeper-3.4.12 /opt/zookeeper-3.4.12

# Set environment
ENV JAVA_HOME /usr/local/jdk
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin

EXPOSE 2181 2888 3888

# start zookeeper
ENTRYPOINT /opt/zookeeper-3.4.12/bin/zkServer.sh start-foreground
