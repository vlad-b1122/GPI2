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
			cd webapp/
            ./gradlew assemble
            '''
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
