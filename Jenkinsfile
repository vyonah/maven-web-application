pipeline{
    
    agent any
    
    tools{
        maven 'maven3.8.6'
        }
        stages{
            stage('1clonecode'){
                steps{
                    git branch: 'feature', credentialsId: 'Github-credential', url: 'https://github.com/harry2ft/maven-web-application/'
                }
            }
            stage('2test+build'){
                steps{
                    sh 'mvn clean package'
                }
            }
            stage('3codequality'){
                steps{
                    sh 'mvn sonar:sonar'
                }
            }
            stage('uploadArtifact'){
                steps{
                    sh 'mvn deploy'
                }
            }
            /*
            stage('deploytoproduction'){
                steps{
                    deploy adapters: [tomcat9(credentialsId: 'tomcat-credentials', path: '', url: 'http://3.142.184.94:8080/')], contextPath: null, war: 'target/*war'
                }
            }
        }
            post{
                always{
                  emailext body: '''Hey Guys
Build and deployment is successful

Thanks
Landmark''', recipientProviders: [buildUser()], subject: 'Success', to: 'harrye900@gmail.com'  
                }
                success{
                    emailext body: '''Hey Guys
Build and deployment is successful

Thanks
Landmark''', recipientProviders: [buildUser()], subject: 'Success', to: 'harrye900@gmail.com'
                }
                failure{
                    emailext body: '''Hey Guys
Build and deployment is failed please resolve issue

Thanks
Landmark''', recipientProviders: [buildUser()], subject: 'failure', to: 'harrye900@gmail.com'
                    
                }
            }
            */
        }
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
