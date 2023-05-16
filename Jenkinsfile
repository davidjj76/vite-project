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
        sh 'npm run lint'
        sh 'npm run build'
        archiveArtifacts 'dist'
      }
    }

  }
}