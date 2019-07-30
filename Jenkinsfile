pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                bat 'npm install'
            }
        }
        stage('deploy') {
            steps {
                bat 'pm2 start index.js'
            }
        }
    }
}