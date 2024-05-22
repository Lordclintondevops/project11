pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/tech']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Lordclintondevops/project11.git']]])
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        // stage('Terraform Apply') {
        //     steps {
        //       //  input 'Deploy to AWS?'
        //         sh 'terraform apply -auto-approve'
        //     }
        // }
        stage('Terraform Destroy') {
            steps {
                script {
                    dir('path/to/terraform/config') {
                        // Execute 'terraform destroy' to destroy the infrastructure
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}