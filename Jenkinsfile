pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/USERNAME/REPO.git'
            }
        }

        stage('Build') {
            steps {
                bat 'chmod +x gradlew'
                bat './gradlew clean build'
            }
        }
    }
}