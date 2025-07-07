provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_route53_record" "alb_record" {
  zone_id = "<YOUR-ROUTE-53-ZONE-ID>"
  name    = "aaqib.com"
  type    = "A"

  alias {
    name                   = data.aws_lb.my_lb.dns_name
    zone_id                = data.aws_lb.my_lb.zone_id
    evaluate_target_health = true
  }
}

