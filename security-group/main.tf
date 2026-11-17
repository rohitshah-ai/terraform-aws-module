resource "aws_security_group" "this" {
  name        = var.sg_name
  description = "Allow SSH only from the configured trusted IP"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from trusted IP only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  # Allows outbound traffic, including package updates.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = var.sg_name
    ManagedBy = "Terraform"
  }
}
