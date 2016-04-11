FROM java:alpine

ENV HUB_VERSION=1.0.0

RUN mkdir /opt
ADD https://oss.jfrog.org/artifactory/oss-snapshot-local/org/seedstack/hub/seedstack-hub/${HUB_VERSION}-SNAPSHOT/seedstack-hub-${HUB_VERSION}-20160408.190101-20-capsule.jar /opt/capsule.jar

EXPOSE 8080

CMD exec java $JAVA_OPTS -jar /opt/capsule.jar

