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
    // create deploy folder if not exists
    bat 'if not exist "C:\\DevOpsVivekaDeploy" mkdir "C:\\DevOpsVivekaDeploy"'
    // copy all project files from workspace to deploy folder
    bat 'xcopy "%WORKSPACE%\\*" "C:\\DevOpsVivekaDeploy\\" /E /I /Y'
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




