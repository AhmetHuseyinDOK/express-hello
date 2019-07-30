pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'npm install'
                sh  'Compress-Archive * out.zip'
            }
        }
        stage('Deploy') {
            steps {
                bat 'echo deployed'
            }
        }
    }
}