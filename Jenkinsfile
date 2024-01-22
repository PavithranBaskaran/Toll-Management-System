pipeline {
    agent any

    stages {
        stage('SCM') {
    git 'https://github.com/foo/bar.git'
  }
  stage('SonarQube analysis') {
      echo 'Scanning........'
    def scannerHome = tool 'SonarScanner 4.0';
    withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner"
    }
      echo 'Scanning Done...........'
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


