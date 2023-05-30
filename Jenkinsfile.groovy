pipeline {
    agent { label 'Docker' }
    stages{
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
                sh 'docker build ChatGPT:latest .'
            }
        }
    }
}
