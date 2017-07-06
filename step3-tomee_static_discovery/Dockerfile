FROM tomee:8-jre-7.0.3-plume

HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost/ || exit 1

COPY apptest.war /usr/local/tomee/webapps/apptest.war
COPY tomee.xml /usr/local/tomee/conf
COPY mysql-connector-java-5.1.42-bin.jar /usr/local/tomee/lib
COPY server.xml /usr/local/tomee/conf/server.xml
COPY tomcat-users.xml /usr/local/tomee/conf/tomcat-users.xml
COPY context.xml /usr/local/tomee/webapps/manager/META-INF/context.xml
COPY logging.properties /usr/local/tomee/conf/logging.properties
