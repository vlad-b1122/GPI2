pipeline {
    agent any

    stages {
        stage('Construccion') {
            steps {
			sh '''#!/bin/bash
			cd webview/
            ./gradlew build
            '''
            }
        }
        stage('Empaquetado') {
            steps {
			sh '''#!/bin/bash
			cd webview/
            ./gradlew assemble
            '''
            }
        }
        stage('Pruebas') {
            steps {
			sh '''#!/bin/bash
			cd webview/
            ./gradlew test
            '''
            }
        }
    }
}
