# DOCKER-JENKINS-GRADLE

Gradle fit for jenkins pipeline

# How To Use

Jenkinsfile:

```
pipeline {
  agent {
    docker {
      image 'honomoa/jenkins-gradle'
    }
  }
  stages {
    stage('Clone scm') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[url: 'http://git-server/user/repository.git']]])
      }
    }
    stage('Run Gradle') {
      steps {
        sh 'gradle --version'
      }
    }
  }
}
```
