pipeline {
    agent any
    
    tools {
        terraform 'jenkins-terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                 git branch: 'main', credentialsId: 'github-credentials', url: 'https://github.com/kleinda2022/CICD-pipeline'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
