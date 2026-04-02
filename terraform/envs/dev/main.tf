module "aks" {
  source       = "../../modules/aks"
  cluster_name = "aks-dev"
  location     = "centralindia"
  rg_name      = "rg-devops-project"
}
