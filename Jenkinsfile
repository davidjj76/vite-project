pipeline {
  agent {
    docker {
      image 'node:lts'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'npm run build'
        archiveArtifacts 'dist/**/*'
      }
    }

    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'npm run build'
          }
        }

        stage('Lint') {
          steps {
            sh 'npm run lint'
          }
        }

      }
    }

    stage('Save') {
      steps {
        archiveArtifacts 'dist/**/*'
      }
    }

  }
}