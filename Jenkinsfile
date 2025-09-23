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
    bat 'if not exist "C:\\DevOpsVivekaDeploy" mkdir "C:\\DevOpsVivekaDeploy"'
    bat 'xcopy "%WORKSPACE%\\*.*" "C:\\VivekaDeploy\\" /E /I /Y /EXCLUDE:"%WORKSPACE%\\deploy"'
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




