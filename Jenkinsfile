pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('agentless')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t eaglehaslanded/agentless:son .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push eaglehaslanded/agentless:son'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}