
pipeline {
    agent any
  //   environment {
  //       SCANNER_HOME = tool 'SonarQube Scanner';
  //   }

  //   stages {
  // //       stage('SCM') {
  // //   git 'https://github.com/foo/bar.git'
  // // }
  // stage('SonarQube analysis') {
  //     steps {
  //     echo 'Scanning........'
  //   withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
  //     sh "${SCANNER_HOME}/bin/sonar-scanner"
  //   }
  //     echo 'Scanning Done...........'
  //     }
  // }
  //       // stage('Build') {
  //       //     steps {
  //       //         echo 'Building..'
  //       //         sh 'docker build -t pipeline .'
  //       //         echo 'Image Created.......'
  //       //     }
  //       // }
  //       stage('Test') {
  //           steps {
  //               echo 'Testing..'
  //           }
  //       }
  //       stage('Deploy') {
  //           steps {
  //               echo 'Deploying....'
  //           }
  //       }
    // }
stages {
 stage("build & SonarQube analysis") {
     steps {
          node('Permanent Agent') {
              withSonarQubeEnv('My SonarQube Server') {
                 sh 'mvn clean package sonar:sonar'
              }
          }
     }
      }

      stage("Quality Gate"){
          steps {
              script {
          timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
          }
              }
          }
      }
}
}


