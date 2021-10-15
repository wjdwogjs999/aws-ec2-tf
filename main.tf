provider aws {
  region= "ap-northeast-1"
}

resource "aws_instance" "terraform-test2" {
  ami = "ami-0ce107ae7af2e92b5" 
  instance_type = "t2.micro"
  key_name = "devos-demo-bodoru"
  vpc_security_group_ids = [
    "sg-0955c2e6183c5ad97"
  ]
  subnet_id="subnet-0052ec1de18fd0603"
  tags = {
    Name = "terraform-cloud-ec2-bodoru"
  }
}

output "instance_ip_addr" {
  value = "aws_instance.terraform-test.private_ip"
}
