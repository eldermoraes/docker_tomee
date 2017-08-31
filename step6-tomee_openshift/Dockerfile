FROM tomee:8-jre-7.0.3-plume

ENV user=tomee \
    group=tomee \
    uid=1001 \
    gid=501

RUN addgroup --system ${group} --gid ${gid} && \
    adduser -u ${uid} --gid ${gid} --disabled-login --system ${user} && \    
    chown -R tomee:tomee /usr/local/tomee && \
    chmod -R 775 /usr/local/tomee	

USER ${uid}

COPY apptest.war /usr/local/tomee/webapps/apptest.war
COPY tomee.xml /usr/local/tomee/conf
COPY mysql-connector-java-5.1.42-bin.jar /usr/local/tomee/lib
COPY server.xml /usr/local/tomee/conf/server.xml
