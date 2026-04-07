pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/ujwalshetty7022/CiCD_using_jenkins_pipline_hello_application.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop hello-container || true
                docker rm hello-container || true
                docker run -d -p 80:80 --name hello-container hello-app
                '''
            }
        }
    }
}