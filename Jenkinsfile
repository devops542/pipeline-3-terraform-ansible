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
 
        stage('Terraform Init') { 
            steps { 
                dir('terraform') { 
                    sh 'terraform init' 
                } 
            } 
        } 
 
        stage('Terraform Validate') { 
            steps { 
                dir('terraform') { 
                    sh 'terraform validate' 
                } 
            } 
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
 
    } 
}