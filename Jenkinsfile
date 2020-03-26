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
				sh "rm -f RandomGen.jar"
				sh "rm -f src/RandomGen.class"

            }
        }

        stage('compile') {

            steps {

               echo 'Building..'
			   sh "javac src/RandomGen.java"


            }
        }
	
	stage('maven build') {
		steps {

			  // compute complete workspace path, from current node to the allocated disk
    exws(extWorkspace) {
        try {
            // run tests in the same workspace that the project was built
            sh 'mvn dist'
        } catch (e) {
            // if any exception occurs, mark the build as failed
            currentBuild.result = 'FAILURE'
            throw e
        } finally {
            // perform workspace cleanup only if the build have passed
            // if the build has failed, the workspace will be kept
            cleanWs cleanWhenFailure: false
        }
    }
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
