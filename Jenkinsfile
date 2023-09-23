pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'repository_searcher:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    sh 'bundle install'
                    sh 'bundle exec rspec'
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Database Setup') {
            steps {
                script {
                    sh 'docker run --name repository_searcher-db-1 -e POSTGRES_USER=repo_searcher -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=respository_searcher_development -d -p 5432:5432 postgres:12'
                    sh 'sleep 10'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        always {
            sh 'docker-compose down'
            sh 'docker stop repository_searcher-db-1'
            sh 'docker rm repository_searcher-db-1'
        }

        success {
            echo 'Deployment successful'
        }

        failure {
            echo 'Deployment failed'
        }
    }
}
