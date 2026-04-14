pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Alexey-Nosko/JenkinsNomadTest'
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