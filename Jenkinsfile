pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'npm install'
                bat 'compact .'
                bat 'dir'
            }
        }
    }
}