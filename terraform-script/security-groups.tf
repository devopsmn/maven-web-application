resource "aws_security_group" "kubernetes_sg" {
  name			= "Allow_All_Ports"
  description	= "Allow_All_Ports All Protocals"
  vpc_id		= aws_vpc.kubernetes_id
  ingress {
    from_port	= 0
	to_port		= 0
	protocol	= "-1"
	cidr_blocks	= ["0.0.0.0/0"]
  }
  egress {
	from_port	= 0
	to_port		= 0
	protocol	= 0
	cidr_blocks	= ["0.0.0.0/0"]
  }

}