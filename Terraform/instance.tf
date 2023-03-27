resource "aws_key_pair" "swimlane" {
  key_name   = "swimlane"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "swimlane-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.meduim"
  subnet_id              = aws_subnet.swimlane-pub-1.id
  key_name               = aws_key_pair.swimlane.key_name
  vpc_security_group_ids = [aws_security_group.swimlane_stack_sg.id]
  tags = {
    Name = "swimlane"
  }
}

resource "aws_ebs_volume" "vol_4_swimlane" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "extr-vol-4-swimlane"
  }
}

resource "aws_volume_attachment" "atch_vol_swimlane" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_swimlane.id
  instance_id = aws_instance.swimlane-web.id
}

output "PublicIP" {
  value = aws_instance.swimlane-web.public_ip
}
