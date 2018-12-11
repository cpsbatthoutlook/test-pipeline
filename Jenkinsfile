pipeline {
  agent {
    node {
      label 'jnode1'
    }

  }
  stages {
    stage('error') {
      steps {
        git 'https://github.com/cpsbatthoutlook/blue-ocean-demo.git'
      }
    }
    stage('build') {
      steps {
        tool 'gradle441'
        sh 'gradle build'
      }
    }
  }
  environment {
    COMPLETED_MSG = 'Build done!'
  }
}