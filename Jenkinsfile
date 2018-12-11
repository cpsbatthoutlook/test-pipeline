pipeline {
  agent {
    node {
      label 'worker-node1'
    }

  }
  stages {
    stage('') {
      steps {
        git 'https://github.com/cpsbatthoutlook/test-pipeline.git'
      }
    }
  }
  environment {
    COMPLETED_MSG = 'Build done!'
  }
}