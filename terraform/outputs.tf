output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.bluenet_perimeter.id
}

output "customer_gateway_ip" {
  description = "Public IP of the On-Prem Cisco R1 Gateway"
  value       = aws_customer_gateway.cisco_r1_onprem.ip_address
}

output "vpn_connection_id" {
  description = "The ID of the Site-to-Site VPN Connection"
  value       = "vpn-0a1b2c3d4e5f6g7h8" 
  # Hardcoded for now. Need to refactor to dynamic reference.
}