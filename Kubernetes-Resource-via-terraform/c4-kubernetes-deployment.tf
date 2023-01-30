# Kubernetes Deployment Manifest
resource "kubernetes_deployment_v1" "myapp1" {
  # metadata is Dictionary object will provide the name of the deployment
  metadata {
    name = "myapp1-deployment"
    labels = {
      app = "myapp1"
    }
  } 
 
  spec {
    #replicas means how may pods you need to run on the deployment
    replicas = 2

    selector {
      match_labels = {
        app = "myapp1"
      }
    }

    template {
      metadata {
        labels = {
          app = "myapp1"
        }
      }

      spec {
        container {
          image = "stacksimplify/kubenginx:1.0.0"
          name  = "myapp1-container"
          port {
            container_port = 80
          }
          }
        }
      }
    }
}
