resource "aws_instance" "ec2-pub" {
 ami = data.aws_ami.ubuntu.id
 instance_type = "t2.micro"
 security_groups = [aws_security_group.sg.id]
 subnet_id = aws_subnet.public.id
 associate_public_ip_address = false
 key_name = "cmpt489Ec2key"

 tags = {
 Name = "CYBER_SECURITY_EC2_PUB"
 }
}
