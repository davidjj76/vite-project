pipeline {
    agent {
        docker {
            image 'node:lts-buster-slim'
            args '-p 3000:4173'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Lint') {
            steps {
                sh './jenkins/scripts/lint.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}