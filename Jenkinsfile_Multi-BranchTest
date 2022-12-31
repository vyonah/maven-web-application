pipeline{
	agent any
	tools {
	maven "Maven3.8.6"
	}
stages{
	stage('1GetCode'){
		steps{
			sh "echo 'cloning the latest version of the application'  "
			git branch: 'feature', credentialsId: 'GitHubCredentials', url: 'https://github.com/MovOps/maven-web-application'
			}
		}
	stage('2Test+Build'){
		steps{
                        sh "echo 'running JUnit-test-cases' "
                        sh "echo 'testing must pass to create artifacts ' "
                        sh "mvn clean package"
                          }
                }
	/*
  stage('3CodeQuality'){
              steps{
                    sh "echo 'Perfoming CodeQualityAnalysis' "
                    sh "mvn sonar:sonar"
                  }
            }
	stage('5uploadNexus'){
             steps{
                sh "echo 'Deploying to Artifactoryr' " 
                sh "mvn deploy"
                  }
            }
	stage('6deploy2prod'){
         steps{
            sh "echo 'Deploying to Application Server' "
            deploy adapters: [tomcat9(credentialsId: 'Tomcat-Credentials', path: '', url: 'http://18.117.227.43:8080/')], contextPath: null, war: 'target/*war'
            }     
      }
    }
    post('7emailnotification'){
        always{
        emailext body: '''Hey Team,
        Please review current build status.

        Thanks!
        Zoolch DevOps Team
        +1678 360 0524''', recipientProviders: [buildUser(), contributor(), developers(), requestor(), upstreamDevelopers()], subject: 'New Build', to: 'team@zoolch.com'    
        }
        success{
        emailext body: '''Hey Team,
        Congratulations! Build is a success.

        Thanks!
        Zoolch DevOps Team
        +1678 360 0524''', recipientProviders: [buildUser(), contributor(), developers(), requestor(), upstreamDevelopers()], subject: 'New Build', to: 'team@zoolch.com'    
        }    
        failure{  
        emailext body: '''Hey Team,
        Build failed! Please resolve issues.

        Thanks!
        Zoolch DevOps Team
        +1678 360 0524''', recipientProviders: [buildUser(), contributor(), developers(), requestor(), upstreamDevelopers()], subject: 'New Build', to: 'team@zoolch.com'    
        }
    }
  */  
 }
