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
mvn clean package'''
        
        docker.build("my-image:${env.BUILD_ID}", "./mrr/")
      }
    }
  }
}
