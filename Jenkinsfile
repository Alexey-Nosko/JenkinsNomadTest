pipeline {
    agent any

    environment {
        IMAGE = "localhost:5000/spring-app:latest"
    }

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew clean build'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push $IMAGE'
            }
        }

        stage('Deploy to Nomad') {
            steps {
                sh '''
                    export NOMAD_ADDR=http://host.docker.internal:4646
                    nomad job run nomad/nomad-job.hcl
                '''
            }
        }
    }
}