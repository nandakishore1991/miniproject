pipeline {
    agent any

    stages {
        stage('scm') {
            steps {
                git 'https://github.com/nandakishore1991/miniproject.git'
            }
        }
        stage('docker build') {
            steps {
                sh 'sudo docker build  -t  kishore9691/sonar:v1  . '
            }
        }
        stage('docker images') {
            steps {
                sh 'sudo docker images'
            }
        }
        stage('docker run') {
            steps {
                sh 'sudo docker run -d --name sonar1  -p 8081:80 kishore9691/sonar:v1'
            }
        }
        stage('docker login') {
            steps {
                sh 'sudo docker login -u ${dockerhub_username} -p ${dockerhub_password}'
            }
        }
        stage('docker push') {
            steps {
                sh 'sudo docker push kishore9691/sonar:v1'
            }
        }
        stage('print success') {
            steps {
                sh 'echo success'
            }
        }
    }
}
