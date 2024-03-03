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
                git.exe add -A Dockerfile
                git.exe commit -m "pipeline push"
                git.exe push origin test
            }
        }
    }
}
