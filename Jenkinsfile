pipeline {
    agent any

    stages {

		stage ('prework') {
			steps {
				    echo "Building version"
				    git url: 'https://github.com/Tejaon/Random_GIT.git'
			}
		}

        stage('clean') {

            steps {
                echo 'cleaning..'
				//sh "rm -f RandomGen.jar"
				//sh "rm -f src/RandomGen.class"

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
			   sh "jar cvf RandomGen.jar src/RandomGen.class"
            }
        }
    }
}
