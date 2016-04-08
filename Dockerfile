FROM java:alpine
RUN apk update && apk add wget

ENV HUB_SNAPSHOT=1.0.0
ENV HUB_RELEASE=

RUN mkdir /scripts
COPY scripts/install.sh /scripts/install.sh 
RUN chmod +x /scripts/install.sh && /scripts/install.sh

EXPOSE 8080

CMD exec java $JAVA_OPTS -jar /opt/capsule.jar
