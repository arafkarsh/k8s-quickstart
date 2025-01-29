
pipeline {
    agent any
     environment {
    PATH = "/usr/local/bin/:$PATH"
    HOME="/var/root/.jenkins"

  }
    stages {
        stage('Build') {
            steps {
                echo 'Build the App'
                echo "PATH is: $PATH"
                sh 'npm i'
                sh 'ng build --prod'
            }
        }
        stage('Test') {
            steps {
                echo 'Test the App'
                sh 'testApp.sh'
            }
        }     
        
        stage('Staging') {
            steps {
                echo 'Deploy the App in Staging'
                echo "HOME is: $HOME"
                sh 'git add .'
                sh 'git commit -m "docs"'
                sshagent(credentials : ['mygithubssh']) {               
                sh 'git ls-remote -h --refs git@github.com:meta-magic/pipelinetest.git main |awk "{print $1}"'
                }

            }
        }
    }
}