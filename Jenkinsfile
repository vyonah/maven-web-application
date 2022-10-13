pipeline{
  agent any 
  tools {
    maven "maven3.8.6"
  } 
  stages {
    stage('1GetCode'){
      steps{
        sh "echo 'cloning the latest application version' "
        git branch: 'master', credentialsId: 'gitHubcredentials2', url: 'https://github.com/m-rz-comic/maven-web-application3'
       }
     }
   stage('3Test+Build'){
      steps{
        sh "echo 'running JUnit-test-cases' "
        sh "echo 'testing must passed to create artifacts ' "
        sh "mvn clean package"
      }
    }
    stage('4CodeQuality'){
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
     stage('8deploy2stage'){
      steps{
        deploy adapters: [tomcat9(credentialsId: 'tomcatcredentials', path: '', url: 'http://54.193.153.41:8080/')], contextPath: null, war: 'target/*war'
    }
  }
 }
post{
    always{
      emailext body: '''Hey guys
             please check build status
             
thanks
MARZ''', subject: 'SUCCESS', to: 'mariustuma88@gmail.com'
    }
  
    success{
      emailext body: '''Hey guys
               good job build and deployment is successful
                             
thanks
MARZ''', subject: 'SUCCESS', to: 'mariustuma88@gmail.com'
   } 
  
    failure{
      emailext body: '''Hey guys
                build and deployment has failed
                
thanks
MARZ''', subject: 'SUCCESS', to: 'mariustuma88@gmail.com'
    }
  }  
}
