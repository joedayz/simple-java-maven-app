pipeline {
    agent any

    tools {
        maven 'Apache Maven 3.9.6'
        jdk 'JDK 17'
    }

    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}