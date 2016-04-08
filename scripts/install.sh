mkdir /opt
cd /opt 
if [ -n "$HUB_SNAPSHOT" ];then
    wget https://oss.jfrog.org/artifactory/oss-snapshot-local/org/seedstack/hub/seedstack-hub/${HUB_SNAPSHOT}-SNAPSHOT/maven-metadata.xml 
    version=`cat maven-metadata.xml | grep '<timestamp>' | sed 's#\s*<timestamp>\(.*\)</timestamp>#\1#g'` 
    buildNumber=`cat maven-metadata.xml | grep '<buildNumber>' | sed 's#\s*<buildNumber>\(.*\)</buildNumber>#\1#g'` 
    wget --output-document=capsule.jar https://oss.jfrog.org/artifactory/oss-snapshot-local/org/seedstack/hub/seedstack-hub/${HUB_SNAPSHOT}-SNAPSHOT/seedstack-hub-${HUB_SNAPSHOT}-${version}-${buildNumber}-capsule.jar
fi
