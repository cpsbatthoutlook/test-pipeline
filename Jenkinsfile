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
            git 'https://github.com/cpsbatthoutlook/blue-ocean-demo.git'
          }
        }
        stage('f1-branch') {
          steps {
            git(url: 'https://github.com/cpsbatthoutlook/blue-ocean-demo.git', branch: 'f1-branch')
          }
        }
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