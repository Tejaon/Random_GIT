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
          	    fileExists 'C:\\Users\\tejao\\GIT\\RomanConverter\\build.xml'
		//    dir 'C:\\Users\\tejao\\GIT\\RomanConverter'
		    ant -file C:\\Users\\tejao\\GIT\\RomanConverter\\build.xml
	 	//    sh '"C:\\Program Files\\Java\\jdk-13.0.2\\bin\\java.exe" "-javaagent:C:\\Program Files\\JetBrains\\IntelliJ IDEA Educational Edition 2019.3.3\\lib\\idea_rt.jar=56689:C:\\Program Files\\JetBrains\\IntelliJ IDEA Educational Edition 2019.3.3\\bin" -Dfile.encoding=UTF-8 -classpath C:\\Users\\tejao\\GIT\\Ideaproject\\RomanConverter\\out\\production\\RomanConverter RomanConverter'
		    
		    echo "build.xml"
            }   
        }
    	    
        stage('Test') {
            steps {
                echo "Tesing...."
		    junit 'TestApp'
        }
    }
   }
}
