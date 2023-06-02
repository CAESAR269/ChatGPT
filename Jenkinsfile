pipeline {
    agent { label 'node' }
    stages {
        stage('vcs')
        {
            steps{
            git branch: main,
            url: 'https://github.com/CAESAR269/ChatGPT.git'
        }
    }
       stage('build')
        {
            steps{
                sh 'docker image build -t ChatGPT:latest .'
            }
        }
    }
}
