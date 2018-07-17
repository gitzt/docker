FROM redhat6.8

# Add Java tomcat
COPY jdk /usr/local/jdk
COPY tomcat /opt/tomcat

# Set environment
ENV JAVA_HOME /usr/local/jdk
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin

EXPOSE 8080

# start tomcat
ENTRYPOINT /opt/tomcat/bin/catalina.sh start && \
           tail -f /opt/tomcat/logs/catalina.out
