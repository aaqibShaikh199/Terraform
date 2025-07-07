provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web-1" {
  ami           = "ami-0900588ae829985de"
  instance_type = var.env == "prod" ? "t3.medium" : "t2.nano"

}
