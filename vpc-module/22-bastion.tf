resource "aws_instance" "bastion" {
  instance_type          = "t2.micro"
  ami                    = "ami-00068cd7555f543d5"
  subnet_id              = module.vpc.aws_subnet.public_subnets[0]
  key_name               = "My Mac"
  
  #user_data = file("")
  
  tags = {
    Name = "Bastion"
  }
}