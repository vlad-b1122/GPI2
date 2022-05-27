pipeline {
    agent any

    stages {
        stage('CreatePhar') {
            steps {
			sh '''#!/bin/bash
			cd twentytwentyone/
			mv ~/Escritorio/GPI2/twentytwentyone/twentytwentyone/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2
			php --define phar.readonly=0 generatePhar.php
			mv ~/Escritorio/GPI2/sonar-scanner-cli-4.7.0.2747-linux ~/Escritorio/GPI2/twentytwentyone/twentytwentyone'''
            }
        }
    }
}
