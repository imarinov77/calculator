pipeline {
 agent any
	triggers {
		 pollSCM('* * * * *')
		}

	 stages {
 		stage("Compile") {
 			steps {
 				sh "./gradlew compileJava"
 			}
 		}		
 	stage("Unit test") {
 			steps {
				 sh "./gradlew test"
 			}
 		}
 	
	stage("Package") {
			 steps {
				 sh "./gradlew build"
 			}
		}
	stage("Docker build") {
			 steps {
				 sh "docker build -t imarinov77/calculator ."
			 }			
		}

	}
}


