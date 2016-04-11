mkdir /opt
cd /opt 

TAG=`echo $HUB_VERSION | sed 's/-SNAPSHOT//g'`
echo "$TAG - $HUB_VERSION"
if [ "$TAG" == "$HUB_VERSION" ]; then
    version=""
else
    wget https://oss.jfrog.org/artifactory/oss-snapshot-local/org/seedstack/hub/seedstack-hub/${TAG}-SNAPSHOT/maven-metadata.xml 
    version=`cat maven-metadata.xml | grep '<timestamp>' | sed 's#\s*<timestamp>\(.*\)</timestamp>#\1#g'` 
    buildNumber=`cat maven-metadata.xml | grep '<buildNumber>' | sed 's#\s*<buildNumber>\(.*\)</buildNumber>#\1#g'` 
    wget --output-document=capsule.jar https://oss.jfrog.org/artifactory/oss-snapshot-local/org/seedstack/hub/seedstack-hub/${TAG}-SNAPSHOT/seedstack-hub-${TAG}-${version}-${buildNumber}-capsule.jar
fi
