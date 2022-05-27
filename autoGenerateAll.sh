#!/bin/bash
#TwentyTwentyOne generar Phar
cd twentytwentyone/
#---------Mover el scanner fuera para generar el phar
mv ~/Escritorio/GPI2/twentytwentyone/twentytwentyone/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2
#---------Generar el phar
php --define phar.readonly=0 generatePhar.php
#---------Volver a poner el scanner dentro
mv ~/Escritorio/GPI2/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2/twentytwentyone/twentytwentyone

#SonarQube twentytwentyone audit
cd twentytwentyone
export PATH=$PATH:~/Escritorio/GPI2/twentytwentyone/twentytwentyone/sonar-scanner-cli-4.7.0.2747-linux/sonar-scanner-4.7.0.2747-linux/bin
#---------Escaneado
sonar-scanner   -Dsonar.projectKey=twentyTwentyOne   -Dsonar.sources=.   -Dsonar.host.url=http://localhost:9000   -Dsonar.login=bed7cf9449d19e4518ebe20a79d4802366982554
#Webview apk
cd ../../webview
./gradlew --stop
./gradlew assemble
#Webview test
./gradlew test
./gradlew --stop

#SonarQube webview audit

./gradlew sonarqube \
  -Dsonar.projectKey=androidProject \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=4ef63114dbc861b1d5aefa4418a730d288b6331c

#EasyBuggy audit
cd ../easybuggy
#mvn clean package install
mvn clean verify sonar:sonar   -Dsonar.projectKey=easyBuggy   -Dsonar.host.url=http://localhost:9000   -Dsonar.login=e85c66f1e37215ba3ee8e3eb0cace8b0236139c1








