pipeline {
	agent any
	  tools {
                 maven 'Maven'
                 jdk 'JDK11'
               }
	  environment {
		AWS_ACCOUNT_ID="268360024445"
		AWS_DEFAULT_REGION="us-west-2"
		IMAGE_REPO_NAME="petclinic-application"
		IMAGE_TAG="latest"
		REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
	            }

	  stages {

	      stage('Logging into AWS ECR') {		
		   steps {
			   
		       script {
			      
			     //sh "aws ecr get-login-password — region ${AWS_DEFAULT_REGION} | docker login — username AWS — password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
			       sh "aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 268360024445.dkr.ecr.us-west-2.amazonaws.com"
			       
		       }

			}
	        }
              stage('Build maven ') {
                   steps { 
                     sh 'pwd'      
                     sh 'mvn  clean install package'
                    }
                 }
        
              stage('Copy Artifact') {
                   steps { 
                     sh 'pwd'
		     sh 'cp -r target/*.jar docker'
                    }
                 }
         
              stage('Build docker image') {
                   steps {
                      script { 
			  //dockerImage = docker build -t "${IMAGE_REPO_NAME} ."
			 sh "docker build -t petclinic-application ./docker"
			   }                     
                    }
              }
              // Uploading Docker images into AWS ECR
	      stage('Pushing to ECR') {
		   steps{
		       script {
			     //sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
			     //sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
			       sh "docker tag petclinic-application:latest 268360024445.dkr.ecr.us-west-2.amazonaws.com/petclinic-application:latest"
			       sh "docker push 268360024445.dkr.ecr.us-west-2.amazonaws.com/petclinic-application:latest"
			       }
			    }
			}
		  
            
    
	  }
}
