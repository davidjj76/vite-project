pipeline {
  agent {
    docker {
      image 'node:lts-bullseye-slim'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
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