# PetClinic_Application


## Understanding the Spring Petclinic application with a few diagrams


<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

I created a pet-clinic project to automate the end to end process of creating the AWS infrastructure, continuously integrate and deploy the application to AWS EKS Kubernetes Cluster


## Prerequisites
 
#### 1.Linux Machine
#### 2.Source code management : Git and GitHub
#### 3.Continuous Integration : Jenkins 
#### 3.Build tool : Maven
#### 4.Build Artifacts : AWS ECR 
#### 5.Containerization : Docker
#### 6.Infrastructure as Code tool : Terraform
#### 7.Continuous Deployment : Helm to deploy and scale the application on AWS EKS Kubernetes Cluster


# DEVOPS WORKFLOW

![image](https://user-images.githubusercontent.com/116321339/216475312-2365a4fc-7d7a-4481-8551-58cbd8dda59d.png)
 
# Steps
## Git Setup:
### a. Create a new repository on GitHub to store the PetClinic code.
### b. Clone the repository **git clone https://github.com/spring-projects/spring-petclinic.git**  to your local development environment.


## Infrastructure setup using Terraform:
### a. Use Terraform to create a new VPC, subnets, and security groups in AWS.
### b. Use Terraform to create an AWS EC2 instance to host the Jenkins Server.
### c. Use Terraform to create an AWS ECR repository to store Docker images.
### d. Use Terraform to create an AWS EKS cluster to run the SPA.
### e. Use Terraform to create a S3 bucket for store the Terraform statefile and DynamoDB table for statelocking
### Deployment & Services - Architecture
![image](https://user-images.githubusercontent.com/116321339/216130623-770c78ae-0e6f-4bf0-9737-7e91e56daa59.png)

## Ansible:

### a. Integrate Ansible with Terraform to build the environment on the AWS EC2 instance (Jenkins_Server).

### b. Install the following packages using Ansible playbook:
####    1. Java
####    2. Jenkins
####    3. Docker
####    4. Maven

## Jenkins:
### a. Log in to the Jenkins server and configure Jenkins by installing and configuring the required plugins, such as the Docker plugin.

### b. Create a Jenkins pipeline that includes the following stages:

####   1. Checkout the SPA code from the GitHub repository using Git.
####   2. Build the Docker image of the SPA using the Dockerfile in the repository.
####   3. Push the Docker image to the AWS ECR repository.


## Terraform :
### a. Use Terraform to create to Helm provider 
### b. Use Helm to create a custom chart that deploys the Petclinic to EKS. The Helm chart should include the required Kubernetes resources, such as Deployment and Service, to run the Petclinic on EKS.
### c. Use Terraform to deploy the custom Helm chart to EKS.
 
## Monitoring:
### a. Use Prometheus to collect metrics from the SPA.
### b. Set up Grafana to visualize the collected metrics.


## Running petclinic locally


You can then access petclinic here: http://localhost:31283/

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

# License

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
