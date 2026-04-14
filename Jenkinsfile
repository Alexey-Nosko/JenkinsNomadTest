pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'chmod +x gradlew'
                bat './gradlew clean build'
            }
        }
    }
}