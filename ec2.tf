resource "aws_instance" "this" {
  ami                     = "ami-00874d747dde814fa"
  instance_type           = "t2.small"
  key_name                = aws_key_pair.key.key_name
  security_groups         = [aws_security_group.tf-sg.id]
  subnet_id               = aws_subnet.public1.id
  associate_public_ip_address  = true
  iam_instance_profile = aws_iam_instance_profile.iam_profile.id
}

