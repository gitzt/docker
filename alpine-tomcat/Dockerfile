FROM openjre7

# add tomcat
RUN mkdir -p /opt
COPY tomcat /opt/tomcat

# Set environment
ENV TOMCAT_HOME /opt/tomcat
ENV PATH ${PATH}:${TOMCAT_HOME}/bin

# start tomcat
ENTRYPOINT /opt/tomcat/bin/catalina.sh start && \
           tail -f /opt/tomcat/logs/catalina.out
