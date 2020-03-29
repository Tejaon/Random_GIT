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
          //      fileExists 'C:\\Users\\tejao\\GIT\\RomanConverter\\build.xml'
		//    dir 'C:\\Users\\tejao\\GIT\\RomanConverter'
		    echo "build.xml"
            }   
        }
    	    
        stage('Test') {
            steps {
                echo "Tesing...."
        }
    }
   }
}
