pipeline {
    agent any
    environment {
        registry = "sravanmeduri/light"
        registryCredential = "7bb40825-46be-4153-b611-0fa92be57638"
        dockerImage = ""
    } 
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sravanmeduri/docker-pipe.git']]])
            }
        }
        stage('Pushing to another branch') {
            steps {
                bat 'git add -A Dockerfile'
                bat 'git commit -m "pipeline push"'
                bat 'git push origin test'
            }
        }
    }
}
