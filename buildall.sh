#!/bin/bash
cd saiku-core
mvn clean install 
cd ..
cd saiku-webapp
mvn clean install
cd ..
cd saiku-ui
mvn clean package install:install-file -Dfile=target/saiku-ui-2.1.war  -DgroupId=org.saiku -DartifactId=saiku-ui -Dversion=2.1 -Dpackaging=war
cd ../saiku-server
mvn clean package
cd ../saiku-bi-platform-plugin
mvn clean package
