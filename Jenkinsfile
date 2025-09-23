pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone repository from GitHub
                git url: 'https://github.com/Shashankgowdasp/VivekaLoginPage-cicd.git',
                    credentialsId: 'github-creds',
                    branch: 'master'
            }
        }

        stage('Build') {
            steps {
                // For static HTML, no build step is needed
                echo "Static HTML project - skipping build"
            }
        }

        stage('Deploy') {
            steps {
                // Deploy files to a deploy folder within workspace
                bat '''
                    if not exist "%WORKSPACE%\\deploy" mkdir "%WORKSPACE%\\deploy"
                    xcopy "%WORKSPACE%\\*.*" "%WORKSPACE%\\deploy\\" /E /I /Y
                '''
            }
        }
    }

    post {
        always {
            // Clean workspace after build if needed
            cleanWs()
        }
    }
}




