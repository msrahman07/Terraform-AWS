resource "aws_security_group" "sg" {
 name = "CYBER_SECURITY_SG"
 description = "CYBERSECURITY SECURITY GROUP"
 vpc_id = aws_vpc.main.id
 ingress{
 from_port = 22
 to_port = 22
 protocol = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
 }
 ingress{
 from_port = 8081
 to_port = 8081
 protocol = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
 }
 egress{
 from_port = 0
 to_port = 0
 protocol = "all"
 cidr_blocks = ["0.0.0.0/0"]
 }
}
