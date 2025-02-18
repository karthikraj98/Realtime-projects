# Find the latest available AMI that is tagged with Component = web
data "aws_ami" "ami_id" {

    most_recent = true
    owners = []

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Component"
    values = ["web"]
  }

  
}
