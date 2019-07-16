pipeline {
  agent any
  stages {
    stage('pull source code') {
      steps {
        git 'https://github.com/qiufangchun/mrr.git'
      }
    }
    stage('build') {
      steps {
        sh '''cd ./mrr
mvn clearn package'''
      }
    }
  }
}