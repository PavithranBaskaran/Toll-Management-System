pipeline {
    agent any
    environment {
        SCANNER_HOME = tool 'SonarScanner 4.0';
    }

    stages {
  //       stage('SCM') {
  //   git 'https://github.com/foo/bar.git'
  // }
  stage('SonarQube analysis') {
      steps {
      echo 'Scanning........'
    withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
      sh "${SCANNER_HOME}/bin/sonar-scanner"
    }
      echo 'Scanning Done...........'
      }
  }
        // stage('Build') {
        //     steps {
        //         echo 'Building..'
        //         sh 'docker build -t pipeline .'
        //         echo 'Image Created.......'
        //     }
        // }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}


