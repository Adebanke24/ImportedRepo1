FROM tomcat 
WORKDIR webapps 
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
ENTRYPOINT ["/usr/local/tomcat/bin/startup.sh", "-D", "FOREGROUND"]
