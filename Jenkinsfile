pipeline{
    agent any
    tools{
        maven "maven3.8.6"
    }
    stages{
        stage('GetCode'){
            steps{
                sh "echo 'cloning the latest application version' "
                git branch: 'feature', credentialsId: 'gitHubCredentials', url: 'https://github.com/molarmex/maven-web-application'
            }
        }
        stage('Test+Build'){
            steps{
                sh "mvn clean package"
            }
        }


 stage('CodeQuality'){
      steps{
        sh "echo 'Perfoming CodeQualityAnalysis' "
        sh "mvn sonar:sonar"
      }
    } 
    stage('5uploadNexus'){
      steps{
        sh "mvn deploy"
      }
    }  
    stage('8deploy2prod'){
      steps{
        deploy adapters: [tomcat9(credentialsId: 'tomcat-credentials', path: '', url: 'http://3.101.40.115:8080/')], contextPath: null, war: 'target/*war'
      }
    }
}
    post{
    always{
      emailext body: '''Hey guys
Please check build status.

Thanks
Molarmex''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    }
    success{
      emailext body: '''Hey guys
Good job build and deployment is successful.

Thanks
Molarmex''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    } 
    failure{
      emailext body: '''Hey guys
Build failed. Please resolve issues.

Thanks
Molarmex''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    }
}
}

