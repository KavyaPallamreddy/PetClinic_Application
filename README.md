# PetClinic_Application


## Understanding the Spring Petclinic application with a few diagrams


<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

I created a pet-clinic project to automate the end to end process of creating the AWS infrastructure, continuously integrate and deploy the application to AWS EKS Kubernetes Cluster
## DEVOPS Continuous integration and Continuous deployment
![image](https://github.com/KavyaPallamreddy/PetClinic_Application/assets/116321339/18ce7738-ad7a-4dbb-813c-64d04b20d07e)


## Prerequisites
Here are the step-by-step details to set up an end-to-end Jenkins pipeline for a Java application using SonarQube, Argo CD, Helm, and Kubernetes:

### Prerequisites:

 1. PetClinic_Application code hosted on a Git repository
 2. Jenkins server
 3. Kubernetes cluster
 4. Helm package manager
 5. Argo CD
 6. Terraform ( To create Jenkins Server on AWS)
 7. ansible ( To install jenkins, java, docker and maven on jenkins server)

# Steps

## 1. Git Setup:
         1. Create a new repository on GitHub to store the PetClinic code.
         2. Clone the repository **git clone https://github.com/spring-projects/spring-petclinic.git**  to your local development environment.


## 2. Infrastructure setup using Terraform:
         1. Use Terraform to create a new VPC, subnets, and security groups in AWS.
         2. Use Terraform to create an AWS EC2 instance to host the Jenkins Server.
         3. Use Terraform to create an AWS ECR repository to store Docker images.
         4. Use Terraform to create an AWS EKS cluster to run the SPA.
         5. Use Terraform to create a S3 bucket for store the Terraform statefile and DynamoDB table for statelocking

## 3. Ansible:
         1. Integrate Ansible with Terraform to build the environment on the AWS EC2 instance (Jenkins_Server).
         2. Install the following packages using Ansible playbook:
            2.1 Java
            2.2 Jenkins
            2.3 Docker
            2.4 Maven
## 4. Sonarqube:
      1. configure the Sonarqube locally
          apt install unzip
          adduser sonarqube
          wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip
          unzip *
          chmod -R 755 /home/sonarqube/sonarqube-9.4.0.54424
          chown -R sonarqube:sonarqube /home/sonarqube/sonarqube-9.4.0.54424
          cd sonarqube-9.4.0.54424/bin/linux-x86-64/
          ./sonar.sh start

## 5. Jenkins:
         1. Log in to the Jenkins server and configure Jenkins by Install the necessary Jenkins plugins:
            1.1 Git plugin
            1.2 Maven Integration plugin
            1.3 Pipeline plugin
            1.4 Kubernetes Continuous Deploy plugin

        2. Create a new Jenkins pipeline:
           2.1 In Jenkins, create a new pipeline job and configure it with the Git repository URL for the PetClinic_Application.
           2.2 Add a Jenkinsfile to the Git repository to define the pipeline stages.

        3. Define the pipeline stages:
            Stage 1: Checkout the source code from Git.
            Stage 2: Build the PetClinic_Application using Maven.
            Stage 3: Run unit tests using JUnit and Mockito.
            Stage 4: Run SonarQube analysis to check the code quality.
            Stage 5: Package the application into a JAR file.
            Stage 6: Deploy the application to a test environment using Helm.
            Stage 7: Run user acceptance tests on the deployed application.
            Stage 8: Promote the application to a production environment using Argo CD.

        4. Configure Jenkins pipeline stages:
            Stage 1: Use the Git plugin to check out the source code from the Git repository.
            Stage 2: Use the Maven Integration plugin to build the PetClinic_Application.
            Stage 3: Use the JUnit and Mockito plugins to run unit tests.
            Stage 4: Use the SonarQube plugin to analyze the code quality of the PetClinic_Application.
            Stage 5: Use the Maven Integration plugin to package the application into a JAR file.
            Stage 6: Use the Kubernetes Continuous Deploy plugin to deploy the application to a test environment using Helm.
            Stage 7: Use a testing framework like Selenium to run user acceptance tests on the deployed application.
            Stage 8: Use Argo CD to promote the application to a production environment.
            


        5. Set up Argo CD:
            Install Argo CD on the Kubernetes cluster.
            Set up a Git repository for Argo CD to track the changes in the Helm charts and Kubernetes manifests.
            Create a Helm chart for the Java application that includes the Kubernetes manifests and Helm values.
            Add the Helm chart to the Git repository that Argo CD is tracking.

        6. Configure Jenkins pipeline to integrate with Argo CD:
           6.1 Add the Argo CD API token to Jenkins credentials.
           6.2 Update the Jenkins pipeline to include the Argo CD deployment stage.

        7. Run the Jenkins pipeline:
           7.1 Trigger the Jenkins pipeline to start the CI/CD process for the Java application.
           7.2 Monitor the pipeline stages and fix any issues that arise.
This end-to-end Jenkins pipeline will automate the entire CI/CD process for a Java application, from code checkout to production deployment, using popular tools like SonarQube, Argo CD, Helm, and Kubernetes.
 
 


### Running petclinic

### Output
You can then access petclinic here: http://localhost:31283 or http://<ip-address>:31283

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

### License

The Spring PetClinic sample application is released under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).

[spring-petclinic]: https://github.com/spring-projects/spring-petclinic
[spring-framework-petclinic]: https://github.com/spring-petclinic/spring-framework-petclinic
[spring-petclinic-angularjs]: https://github.com/spring-petclinic/spring-petclinic-angularjs 
[javaconfig branch]: https://github.com/spring-petclinic/spring-framework-petclinic/tree/javaconfig
[spring-petclinic-angular]: https://github.com/spring-petclinic/spring-petclinic-angular
[spring-petclinic-microservices]: https://github.com/spring-petclinic/spring-petclinic-microservices
[spring-petclinic-reactjs]: https://github.com/spring-petclinic/spring-petclinic-reactjs
[spring-petclinic-graphql]: https://github.com/spring-petclinic/spring-petclinic-graphql
[spring-petclinic-kotlin]: https://github.com/spring-petclinic/spring-petclinic-kotlin
[spring-petclinic-rest]: https://github.com/spring-petclinic/spring-petclinic-rest
