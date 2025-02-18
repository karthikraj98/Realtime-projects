# Find the latest available AMI that is tagged with Component = RHEL-9-DevOps-Practice
data "aws_ami" "info" {

    most_recent = true
    owners = ["973714476881"]

filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
