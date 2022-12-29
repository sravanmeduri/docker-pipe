pipeline {
    agent any
    environment {
        registry = "sravanmeduri/light"
        registryCredential = "319627b8-733e-43eb-8882-c3e74713625c"
        dockerImage = ""
    } 
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sravanmeduri/docker-pipe.git']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Pushing to hub') {
            steps {
                script {
                    docker.withRegistry('',registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
