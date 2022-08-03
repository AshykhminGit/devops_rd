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
        stage('Make dir') {
            steps {
                echo 'Making dir'
                sh 'pwd'
                sh "cd /home/ash'
                sh 'mkdir onlyDevops'
                sh 'cd onlyDevops'
                sh 'touch fuckingamazing.txt'
            }
        }
        stage('Apache stoppping') {
            steps {
                echo 'Killin Kenny (Apache)'
                
                sh './killApache.sh'
                echo 'They killed Kenny, Bastards!'
            }
        }
    }
}
