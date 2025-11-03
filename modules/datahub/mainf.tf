
resource "helm_release" "datahub" {
  name             = "datahub"
  namespace        = "datahub"
  repository       = "https://helm.datahubproject.io/"
  chart            = "datahub"
  version          = "0.5.34" # check latest version: https://artifacthub.io/packages/helm/datahub/datahub
  create_namespace = true

  # Optional: set custom configuration values
  values = [<<EOF
global:
  graphService:
    neo4j:
      enabled: false
  datahub:
    auth:
      username: datahub
      password: datahub

datahub-gms:
  service:
    type: ClusterIP

datahub-frontend:
  service:
    type: ClusterIP

elasticsearch:
  enabled: true

mysql:
  enabled: true

kafka:
  enabled: true
EOF
  ]
}
