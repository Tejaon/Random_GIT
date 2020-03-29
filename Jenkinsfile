pipeline {
    agent any

    stages {

	    stage('git clone') {
            steps {
               		git credentialsId: 'Tejaon', url: 'https://github.com/Tejaon/Random_GIT.git'
		}
            }
		    
		stage ('prework') {
			steps {
				    echo "Building version"
			}
		}

        stage('clean') {

            steps {
                echo 'cleaning..'
            }
        }

        stage ('Initialize') {
            steps {
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
            }
        }

        stage ('Build') {
            steps {
                sh 'fileExists 'C:\\Users\\tejao\\GIT\\RomanConverter\\build.xml' 
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
    	    
        stage('Test') {

            steps {

                echo 'Tesing....'
		    junit 'AppTest'
		    readFile('build.xml')
            }
        }
    }
}
