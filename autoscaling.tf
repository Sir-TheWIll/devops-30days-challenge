# Launch Template for Auto Scaling
resource "aws_launch_template" "web_template" {
  name_prefix   = "devops-web-"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>DevOps Challenge - Day 3 Auto-Healing</h1>" > /var/www/html/index.html
              EOF
  )

  tags = {
    Name = "devops-web-template"
    Day  = "3"
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "web_asg" {
  name                = "devops-challenge-web-asg"
  vpc_zone_identifier = [data.aws_subnets.default.ids[0]]
  target_group_arns   = []
  health_check_type   = "EC2"
  min_size            = 1
  max_size            = 1
  desired_capacity    = 1

  launch_template {
    id      = aws_launch_template.web_template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "devops-challenge-web-asg"
    propagate_at_launch = true
  }

  tag {
    key                 = "Day"
    value               = "3"
    propagate_at_launch = true
  }
}

# Get default VPC subnets
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_vpc" "default" {
  default = true
}
