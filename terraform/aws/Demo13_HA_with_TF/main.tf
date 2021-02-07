provider "aws" {
  region = "ap-southeast-1"
}

data "aws_ami" "latest_amazon_linux" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_availability_zones" "working" {}

resource "aws_security_group" "web" {
  name = "web Security Group"
  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name  = "Web SG"
    Owner = "BHARATH"
  }
}

resource "aws_launch_configuration" "web" {
  name_prefix     = "Webserver-HA-LC-"
  image_id        = data.aws_ami.latest_amazon_linux.id
  instance_type   = "t3.micro"
  security_groups = [aws_security_group.web.id]
  user_data       = file("user_data.sh")
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "web" {
  name                 = "ASG-${aws_launch_configuration.web.name}"
  launch_configuration = aws_launch_configuration.web.name
  max_size             = 3
  min_size             = 3
  min_elb_capacity     = 3
  health_check_type    = "ELB"
  vpc_zone_identifier  = [aws_default_subnet.default_az1.id,aws_default_subnet.default_AZ2.id]
  load_balancers       = [aws_elb.web.id]
dynamic "tag" {
  for_each = {
    Name = "Webserver in ASG"
    Owner = "BHARATH"
    TAGKEY = "TAGVALUE"
  }
  content {
    key = tag.key
    value = tag.value
    propagate_at_launch = true
  }
}
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_elb" "web" {
  name = "webserver-HA-ELB"
  availability_zones = [data.aws_availability_zones.working.names[0],data.aws_availability_zones.working.names[1]]
  security_groups = [aws_security_group.web.id]
  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  health_check {
    healthy_threshold = 2
    interval = 10
    target = "HTTP:80/"
    timeout = 3
    unhealthy_threshold = 2
  }
  tags = {
    Name = "Web-server-HA-ELB"
    Owner = "BHARATH"
  }
}


resource "aws_default_subnet" "default_az1" {
  availability_zone = data.aws_availability_zones.working.names[0]
}

resource "aws_default_subnet" "default_AZ2" {
  availability_zone = data.aws_availability_zones.working.names[1]
}


output "web_lb_url" {
  value = aws_elb.web.dns_name
}


