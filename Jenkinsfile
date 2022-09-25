pipeline{
   agent any
   tools {
     maven "maven3.8.6"
   }
   stages {
     stage('1GetCode'){
       steps{
         sh "echo 'cloning the latest application version' "
         git branch: 'feature', credentialsId: 'b8ab686c-19f5-47fb-a9bb-82e2972b53c6', url: 'https://github.com/Samablaise/maven-web-application'

       }
     }
     stage('2Testing+Build'){
       steps{
         sh "echo 'running JUnit-test-cases' "
         sh "echo ' testing must be passed to create artifacts' "
         sh "mvn clean package"
       }
     }
     /*
     stage('3codeQuality'){
       steps{
         sh "echo 'Performing CodeQualityAnalysis' "
         sh "mvn sonar:sonar"
       }
     }
     stage('4uploadNexus'){
       steps{
         sh "mvn deploy"
       }
     }
     stage('7deploy2Prod'){
       steps{
         deploy adapters: [tomcat9(credentialsId: 'tomcat-credential', path: '', url: 'http://3.95.215.170:7000/')], contextPath: null, war: 'target/*war'
       }
     }
   }     
     post {
       always{
           emailext body: '''Hey guys 
Please check Build status.

Thanks 
Landmark
+237 679 465 719''', recipientProviders: [buildUser(), developers()], subject: 'Success', to: 'fintech-team@gmail.com'
       }
       success{
         emailext body: '''Hey guys 
Good job build and deployment is successful 

Thanks 
Landmark
+237 679 465 719''', recipientProviders: [buildUser(), developers()], subject: 'Success', to: 'fintech-team@gmail.com'
       }
       failure{
           emailext body: '''Hey guys 
Build failed. Please resolve issues.

Thanks 
Landmark
+237 679 465 719''', recipientProviders: [buildUser(), developers()], subject: 'Success', to: 'fintech-team@gmail.com'
       }
   }
   */
}
}
