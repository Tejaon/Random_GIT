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
		    mvn 'compile'


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
