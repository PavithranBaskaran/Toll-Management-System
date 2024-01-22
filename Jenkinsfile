pipeline {
    agent any

    environment {
        // Define the Docker image name and tag
        DOCKER_IMAGE_NAME = 'pipelineImage'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Check out your source code from version control
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in the project root
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}", '.')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container from the built image
                script {
                    dockerImage.inside("-p 9001:8080") {
                        // You can add additional commands or scripts to run inside the container if needed
                        sh 'echo "Container is running"'
                    }
                }
            }
        }
    }
}
