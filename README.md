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
 
## Steps 
#### 1. git clone https://github.com/spring-projects/spring-petclinic.git
#### 2. Used Terraform (infrastructure as code) to create VPC, Subnets, SecurityGroups, AWS EC2 (Jenkins_Server) and AWS ECR
#### 3. Integrated Ansible with Terraform to build environment on AWS EC2(Jenkins_Server) and installed the following packages (Java,Jenkins,Docker,Maven) 
#### 4. Used Jenkins Continuous Integration pipeline to build and containerize the petclinic-application and pushed it to AWS ECR.
#### 5. Used Terraform  to create private VPC, Subnets, AWS EKS Kubernetes Cluster and install Helm Provider
#### 6. Used Helm to Continuously Deploy and Scale the application on AWS EKS Kubernetes Cluster
 
 # Deployment & Services - Architecture
![image](https://user-images.githubusercontent.com/116321339/216130623-770c78ae-0e6f-4bf0-9737-7e91e56daa59.png)

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
