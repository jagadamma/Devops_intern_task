pipeline
{
    agent any
    stages
    {
        stage('build')
        {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jagadamma/python_flask.git']]])
                }
        }        
        stage('build image')
        {
            steps{
              sh "docker build -t jagadamma/python_dockercode ."
            }
        }        
        stage('push image')
        {
            steps{
                sh "docker login -u jagadamma -p abilashp@1994"
                sh "docker push jagadamma/python_dockercode"
            }
        }
            
        
    }
    
}