pipeline {
  agent {
    node {
      label 'jnode1'
    }

  }
  stages {
    stage('error') {
      steps {
        git 'https://github.com/cpsbatthoutlook/test-pipeline.git'
      }
    }
  }
  environment {
    COMPLETED_MSG = 'Build done!'
  }
}