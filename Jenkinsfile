pipeline {
  agent {
    node {
      label 'jnode1'
    }

  }
  stages {
    stage('error') {
      parallel {
        stage('error') {
          steps {
            git 'https://github.com/cpsbatthoutlook/test-pipeline.git'
          }
        }
        stage('f1-branch') {
          steps {
            git(url: 'https://github.com/cpsbatthoutlook/test-pipeline.git', branch: 'f1-branch')
          }
        }
      }
    }
  }
  environment {
    COMPLETED_MSG = 'Build done!'
  }
}