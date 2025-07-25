provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-020cba7c55df1f615"  # Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}
