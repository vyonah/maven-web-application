pipeline{
    agent any
    tools{
        maven "maven3.8.6"
    }
    stages{
        stage('1Getcode'){
            steps{
                  git branch: 'development', url: 'https://github.com/Chimex999/app.git'
            }
        }
        stage('Test&Build'){
            steps{
                sh "mvn clean package"
            }
        }
        stage('Qualityassurance'){
            steps{
                sh "mvn sonar:sonar"
            }
        }
        stage('DeploytoNexus'){
            steps{
                sh "mvn deploy"
            }
        }
        stage('Deploy2Tomcat'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.92.208.82:8080')], contextPath: null, war: 'target/*war'
            }
        }
    }
    post{
        always{
           emailext body: 'Act accordingly', recipientProviders: [contributor()], subject: 'Build Finished', to: 'Developers' 
        }
    }
