pipeline{
  agent any 
  tools {
    maven "maven3.8.6"
  }  
  stages {
    //agent (note you can have agent for each stage, optional --already we have agent any, this will take care of the project)
    stage('1GetCode'){
      steps{
        sh "echo 'cloning the latest application version' "
        git branch: 'master', credentialsId: 'gitHubCredentials', url: 'https://github.com/lewisc1/maven-web-application'
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
    stage('8deploy2prod'){
      steps{
          deploy adapters: [tomcat9(credentialsId: 'tomcat-access', path: '', url: 'http://172.31.94.21:8080/')], contextPath: null, war: 'target/*war'  }
    }     
 }
post {
    always {
      emailext body: '''Hey guys
Please check build status''', recipientProviders: [developers(), contributor(), requestor()], subject: 'Project Update'
    }
    success {
    emailext body: '''Hey Guys,
Good job build and deployment is successful.

Thanks
Lewis''', recipientProviders: [contributor(), developers(), requestor()], subject: 'Project Update'
    }
    failure {
      emailext body: '''Hey guys
Build failed. Please resolve issues.

Thanks
Lewis 
+1 437 215 2483''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    }
}
}
