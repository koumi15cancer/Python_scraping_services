variable "token" {
  type    = string
  default = getenv("TURSO_TOKEN")
}

env "turso" {
  url     = "libsql+wss://scraper-db-koumi15cancer.turso.io?authToken=${var.token}"
  exclude = ["_litestream*"]
}
