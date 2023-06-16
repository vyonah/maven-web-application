FROM tomcat:8.0.20-jre8
#### Good stuff
#Hopefully this works
# It worked!
COPY target/*.war /usr/local/tomcat/webapps/maven-web-app.war
