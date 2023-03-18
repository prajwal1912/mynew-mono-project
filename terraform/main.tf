resource "aws_instance" "key" {
ami = "ami-05afd67c4a44cc983"
instance-type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Enironment = "prod"
}
key_name = "my-keypair"
}
