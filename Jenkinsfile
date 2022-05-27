pipeline {
    agent any

    stages {
        stage('Construccion') {
            steps {
			sh '''#!/bin/bash
			cd webapp/
            ./gradlew build
            '''
            }
        }
        stage('Empaquetado') {
            steps {
			sh '''#!/bin/bash
			cd twentytwentyone/
			mv ~/Escritorio/GPI2/twentytwentyone/twentytwentyone/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2
			php --define phar.readonly=0 generatePhar.php
			mv ~/Escritorio/GPI2/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2/twentytwentyone/twentytwentyone'''
            }
        }
        stage('Pruebas') {
            steps {
			sh '''#!/bin/bash
			cd webapp/
            ./gradlew test
            '''
            }
        }
    }
}
