# Create MySQL Secret
resource "kubernetes_secret" "mysql_secrets" {
  metadata {
    name      = "mysql-secrets"
    namespace = kubernetes_namespace.default.metadata[0].name
  }

  data = {
    mysql-root-password = base64encode("datahub")
  }

  type = "Opaque"
}

resource "helm_release" "datahub_prerequisites" {
  name             = "datahub-prerequisites"
  repository       = "https://helm.datahubproject.io/"
  chart            = "datahub-prerequisites"
  namespace        = kubernetes_namespace.datahub.metadata[0].name
  version          = "0.5.34" # check latest at https://artifacthub.io/packages/helm/datahub/datahub-prerequisites
  create_namespace = false

  values = [<<EOF
mysql:
  enabled: true

elasticsearch:
  enabled: true

kafka:
  enabled: true
EOF
  ]
}

resource "helm_release" "datahub" {
  name             = "datahub"
  repository       = "https://helm.datahubproject.io/"
  chart            = "datahub"
  namespace        = kubernetes_namespace.datahub.metadata[0].name
  version          = "0.5.34" # check latest version
  create_namespace = false
  depends_on = [helm_release.datahub_prerequisites]

  values = [<<EOF
global:
  elasticsearch:
    host: "elasticsearch"
    port: 9200
  kafka:
    bootstrapServers: "kafka:9092"
  mysql:
    host: "mysql"
    port: 3306
    username: datahub
    password: datahub
    database: datahub

datahub-gms:
  service:
    type: ClusterIP

datahub-frontend:
  service:
    type: ClusterIP
EOF
  ]
}
