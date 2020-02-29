pipeline {
    agent any
    
    stages {
        stage('clean') {
            steps {
                echo 'cleaning..'
            }
        }
        stage('Build') {
            steps {
               echo 'Building..'
                withMaven(maven: 'maven') {
                sh 'mvn clean compile'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Tesing....'
            }
        }
    }
}
