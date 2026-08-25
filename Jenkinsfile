pipeline {
    agent any

    stages {
        stage('Check Tools') {
            steps {
                sh 'terraform --version'
                sh 'ansible --version'
                sh 'aws --version'
            }
        }

        stage('Check AWS Access') {
            steps {
                sh 'aws sts get-caller-identity'
            }
        }
    }
}