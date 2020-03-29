pipeline {
    agent any

    stages {

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
