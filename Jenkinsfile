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
                sh './ci/scripts/lint.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './ci/scripts/deliver.sh' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './ci/scripts/kill.sh' 
            }
        }
    }
}