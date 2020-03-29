pipeline {
    agent any

    stages {

	    stage('git clone') {
            steps {
               bat 'git clone https://github.com/Tejaon/Random_GIT.git'
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

        stage('compile') {

            steps {

               echo 'Building..'


            }
        }
	
	    
        stage('dist') {

            steps {

                echo 'Tesing....'
            }
        }
    }
}
