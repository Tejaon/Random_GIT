pipeline {
    agent any
    
    stages {
        stage('clean') {
            steps {
                echo 'cleaning..'
            }
        }
        stage('compile') {
            steps {
               echo 'Building..'
                withMaven(maven: 'maven') {
                sh 'mvn clean build'
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
