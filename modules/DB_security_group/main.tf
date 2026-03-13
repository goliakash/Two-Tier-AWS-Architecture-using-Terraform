resource "aws_security_group" "this" {
    name = "${var.project_name}-db-sg"
    description = "security group for ${var.project_name} database"
    vpc_id = var.vpc_id  

    ingress {
    description      = "Postgres from ec2"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    security_groups  = [var.app_sg_id]
    }

    tags = {
        Name = "${var.project_name}-db-sg"
    }
}

