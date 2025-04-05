output "ecs_service_name" {
  value = aws_ecs_service.medusa.name
}

output "security_group_id" {
  value = aws_security_group.medusa_sg.id
}

output "cluster_name" {
  value = aws_ecs_cluster.medusa.name
}

