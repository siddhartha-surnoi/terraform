resource "aws_security_group" "ssh_in_all_traffic_out" {
  name        = "terraform-ssh-in-all-traffic-out"  # Use a valid name
  description = "Allow SSH inbound and all outbound traffic"  # This is required

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Adjust as needed for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
   tags = {
    Name = "allow_ssh"
  }
}
