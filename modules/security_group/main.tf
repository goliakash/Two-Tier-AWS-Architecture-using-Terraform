resource "aws_security_group" "this" {
    name = "${var.project_name}-sg" 
    description = "Security group for ${var.project_name}, allowing HTTP and SSH"
    vpc_id = var.vpc_id

    ingress {
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project_name}-sg"
    }

}