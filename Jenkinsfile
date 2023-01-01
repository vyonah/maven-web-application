pipeline{
  agent any 
  tools {
    maven "maven3.8.6"
  }  
  stages {
    stage('1GetCode'){
      steps{
        sh "echo 'cloning the latest application version' "
        git branch: 'feature', credentialsId: 'GitHubCredentials', url: 'https://github.com/kunlequadree/maven-web-application'
      }
    }
    stage('3Test+Build'){
      steps{
        sh "echo 'running JUnit-test-cases' "
        sh "echo 'testing must passed to create artifacts ' "
        sh "mvn clean package"
      }
    }
    /*
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
        deploy adapters: [tomcat9(credentialsId: 'TomcatCredentials', path: '', url: 'http://18.118.17.217:8080/')], contextPath: null, war: 'target/*war'
    }
  }
}
post{
    always{
       emailext body: 'please check build status', recipientProviders: [buildUser(), contributor(), developers()], subject: 'Success', to: 'paypalapp@gmail.com' 
}
success{
       emailext body: 'success build status', recipientProviders: [buildUser(), contributor(), developers()], subject: 'Success', to: 'paypalapp@gmail.com' 
}
failure{
       emailext body: 'failed build status', recipientProviders: [buildUser(), contributor(), developers()], subject: 'Success', to: 'paypalapp@gmail.com' 
}
}
*/
}
}  
