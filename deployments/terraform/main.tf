module "helm_deploy" {
  source                 = "fuchicorp/chart/helm"
 
 
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "enver0173-hello-world"
  
  template_custom_vars = {
    
    deployment_image = "nginx"
  
  }
}
