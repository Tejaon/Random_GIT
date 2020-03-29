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

        stage('compile') {

            steps {

               echo 'Building..'
		    build job: 'C:\\Users\\tejao\\GIT\\Ideaproject\\RomanConverter', quietPeriod: 5


            }
        }
	
	    
        stage('dist') {

            steps {

                echo 'Tesing....'
            }
        }
    }
}
