pipeline {
    agent any
    
    parameters {
        string(name: 'action', defaultValue: 'apply', description: 'Terraform action to perform (apply, destroy, etc)')
    }
    
    stages {
        stage("Checkout") {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/vamsikrishna2049/deleteitlater.git'
            }
        }
        
        stage("Terraform Init") {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        
        stage("Terraform Plan") {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage("Terraform Action") {
            steps {
                echo "Terraform action is --> ${params.action}"
                sh "terraform ${params.action} --auto-approve"
            }
        }
    }
}
