pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello Fucking Spielberg'
            }
        }
   
        stage('Run bash scripts') {
            steps {
                echo 'Starting run'
                sh 'chmod +x ./script.sh'
                sh './script.sh'
            }
        }
    }
}
