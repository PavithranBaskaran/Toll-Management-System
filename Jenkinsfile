import groovy.json.JsonSlurperClassic

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
    stage("test")
    {
    steps {
                    script {
                         def apiURL = sh(script:"curl -s 'https://sonarcloud.io/api/measures/component?componentKey=PavithranBaskaran_Toll-Management-System&metricKeys=coverage'",returnStdout:true).trim()
                         echo "${apiURL}"

                         def jsonSlurper = new JsonSlurperClassic()
                         def jsonResponse = jsonSlurper.parseText(apiURL)

                         def coveragePercentage = jsonResponse.component.measures[0].value    
                    }
                    echo "Coverage Percentage: $coveragePercentage%"
               }
    }
}
}


