# Two EC2 instances 
resource "aws_instance" "instance_1" {
  ami             = "ami-024e6efaf93d85776" # Ubuntu 20.04 LTS // us-east-1
  instance_type   = "t2.micro"
  # we have to setup security groups to enable traffic and by default we wouldn't have this. 
  security_groups = [aws_security_group.instances.name]
  # simple bash script for hello world
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}
# just to show the replication for our initial instance
resource "aws_instance" "instance_2" {
  ami             = "ami-024e6efaf93d85776" # Ubuntu 20.04 LTS // us-east-1
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.instances.name]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 2" > index.html
              python3 -m http.server 8080 &
              EOF
}