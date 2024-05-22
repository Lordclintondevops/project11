pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Lordclintondevops/project11.git'
               // checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Lordclintondevops/project11.git']]])
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
        stage('Terraform Apply') {
            steps {
              //  input 'Deploy to AWS?'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('sleep 120') {
            steps {
                sleep time: 2, unit: 'MINUTES'
            }
        }
        stage('Terraform Destroy') {
            steps {
              //  input 'Deploy to AWS?'
                sh 'terraform destroy -auto-approve'
            }
        }
        //  stage('Terraform Destroy') {
        //      steps {
        //          script {
        //              dir('path/to/terraform/config') {
        //                 // Execute 'terraform destroy' to destroy the infrastructure
        //                  sh 'terraform destroy -auto-approve'
        //              }
        //          }
        //      }
        // }
    }
}
