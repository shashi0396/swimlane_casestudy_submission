variable REGION {
  default = "us-east-2"
}

variable ZONE2 {
  default = "us-east-2b"
}

variable AMIS {
  type = map
  default = {
    us-east-2 = "ami-07ef7933c011a38e1"
  }
}

variable USER {
  default = "ubuntu"
}

variable PUB_KEY {
  default = "pub-swimlane.pub"
}

variable PRIV_KEY {
  default = "swimlane"
}

variable MYIP {
  default = "172.31.19.120"
}
