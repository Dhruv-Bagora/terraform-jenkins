# VPC Variables
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "jenkins-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "The list of availability zones for the VPC"
  type        = list(string)
  default     = ["ap-south-1a"]
}

variable "private_subnets" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_subnets" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}


variable "vpc_tags" {
  description = "Tags to apply to the VPC"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# Security Group Variables
variable "public_sg_name" {
  description = "The name of the public security group"
  type        = string
  default     = "public-sg-jenkins"
}

variable "allowed_egress_cidr_blocks" {
  description = "The CIDR blocks allowed for egress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ssh_cidr_blocks" {
  description = "The CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

# EC2 Instance Variables
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0ad21ae1d0696ad58"
}

variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The key name to use for the EC2 instance"
  type        = string
  default     = "ap-south-key"
}

variable "instance_tags_1" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default = {
    Name = "jenkins_public"
  }
}
variable "instance_tags_2" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default = {
    Name = "Jenkins_public_instance_test_oncemore"
  }
}
