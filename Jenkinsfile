pipeline {
    agent any
    environment {
    }

        stages {
            stage('Checkout') {
                steps {
                    git branch: 'main', url: 'https://github.com/DARGIMA/pubtest.git'
                }
            }

            stage('Build') {
                steps {
                    sh './gradlew clean build'
                }
            }
        }

}