pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                // Ensure Jenkins user has sudo privileges without password for these commands
                sh """
                    sudo cp -r /var/lib/jenkins/workspace/Tween-App/* /var/www/html/
                    sudo systemctl restart apache2
                """
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                // Add test steps here
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Add deploy steps here
            }
        }
        stage('Post-Deploy Actions') {
            steps {
                echo 'Copying files and restarting Apache...'
                // Ensure Jenkins user has sudo privileges without password for these commands
                sh """
                    sudo cp -r /var/lib/jenkins/workspace/Tween-App/* /var/www/html/
                    sudo systemctl restart apache2
                """
            }
        }
    }
}
