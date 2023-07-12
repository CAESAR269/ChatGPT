pipeline {
    agent { label 'node' }
     triggers {
        PollSCM('* * * * *')
              }
    stages {
        stage('vcs')
        {
            steps {
            git branch: 'main',
            url: 'https://github.com/CAESAR269/ChatGPT.git'
        }
    }
       stage('build')
        {
            steps {
                sh 'docker image build -t caesar269/chatgpt:latest .'
                sh 'docker push caesar269/chatgpt:latest'
            }
        }
    }
}
