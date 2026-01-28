output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.networking.vpc_id
}

output "frontend_url" {
  description = "URL of the frontend service"
  value       = aws_lb.frontend.dns_name
}

