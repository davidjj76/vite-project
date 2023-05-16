pipeline {
  agent {
    docker {
      image 'node:lts'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm run build'
        sh 'npm run lint'
      }
    }

  }
}