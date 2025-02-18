resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.instance_names[count.index] == frontend ? var.domain_name : "${var.instance_names[count.index]}.${var.domian_name}
  type    = "A"
  ttl     = 300
  records = var.instance_name[count.index] == frontend ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]
    }