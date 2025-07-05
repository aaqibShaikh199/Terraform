  resource "aws_security_group" "http_access" {
  name   = "http_access"
  vpc_id = "YOUR-VPC-ID-HERE"  # Replace with your actual VPC ID

  # -------------------------
  # INGRESS (Inbound Rules)
  # -------------------------

    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  # -------------------------
  # EGRESS (Outbound Rules)
  # -------------------------

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"           # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]  
  }
}
