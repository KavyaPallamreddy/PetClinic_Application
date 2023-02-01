resource "helm_release" "petclinic1" {
  //depends_on = [ aws_iam_role_policy_attachment.irsa_iam_role_policy_attach ]
  name        = "petclinic"
  chart       = "petclinic"
  repository  = "./helm"
  namespace   = "default"
  max_history = 3
  create_namespace = false
  wait             = true
  reset_values     = true
}

