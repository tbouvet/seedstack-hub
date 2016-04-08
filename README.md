SeedStack.hub is a social platform for discovering and sharing software components.

This hub is using a Mongo Database. 

To run this image:
```
docker run -d -p 8080:8080 -e JAVA_OPTS="-D mongoHosts=<mongodb host>" tbouvet/hub
```


If you use a proxy to connect to internet:
```
docker run -d -p 8080:8080 -e JAVA_OPTS="-D mongoHosts=<mongodb host>" 
-e http_proxy=$http_proxy -e https_proxy=$https_proxy -e no_proxy=$no_proxy tbouvet/hub
```
