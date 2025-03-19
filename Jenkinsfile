pipeline {
    agent any

    tools {
        maven 'Maven_3.9.9'
        jdk 'JDK_17'
    }

    stages {
        stage('Build') { 
            steps {
                bat 'mvn -B -DskipTests clean package' 
            }
        }
 
        stage('Test') {
            steps {
                bat 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('Deliver') {
            steps {
                bat './jenkins/scripts/deliver.bat'
            }
        } 
    }
}
