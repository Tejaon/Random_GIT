pipeline {
    agent any

    stages {

		stage ('prework') {
			steps {
				    echo "Building version"
				    git clone 'https://github.com/Tejaon/Random_GIT.git'
			}
		}

        stage('clean') {

            steps {
                echo 'cleaning..'

            }
        }

        stage('compile') {

            steps {

               echo 'Building..'
			   sh "javac src/RandomGen.java"


            }
        }
	
	    
        stage('dist') {

            steps {

                echo 'Tesing....'
            }
        }
    }
}
