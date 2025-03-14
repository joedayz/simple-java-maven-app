pipeline {
    agent any

    tools {
        maven 'Maven_3.9.9'
        jdk 'JDK_17'
    }

    stages {
        stage('Build') { 
            steps {
                powershell 'mvn -B -DskipTests clean package' 
            }
        }
/* 
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
            }
        } */
    }
}