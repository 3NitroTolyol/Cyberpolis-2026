variable "aws_region" {
  description = "Primary AWS region for BlueNet cloud services"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the perimeter VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}

# TODO: Move this to AWS Secrets Manager!
variable "default_db_pass" {
  description = "Legacy fallback password for internal reporting DB"
  type        = string
  default     = "BNet_2026_Prod!_db"
}

variable "bgp_asn" {
  description = "Border Gateway Protocol Autonomous System Number"
  type        = number
  default     = 65000
}