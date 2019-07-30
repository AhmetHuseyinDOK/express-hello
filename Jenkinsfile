pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'npm install'
            }
        }
        stage('deploy') {
            steps {
                sh 'pm2 start index.js'
            }
        }
    }
}