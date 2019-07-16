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
        sh 'docker build -t fangchun/tomcat:7.1 -f ./mrr/Dockerfile'
        //docker.build("my-image:${env.BUILD_ID}", "./mrr/")
      }
    }
  }
}
