variable "job_name" {
  default     = "codebuild job name"
  description = "Code Build Job name"
}

variable "job_description" {
  default     = "Test Codebuild job provisioned via Terraform"
  description = "Code Build Job description"
}

variable "vpc" {
  default     = "vpc-12345678"
  description = "specify VPC ID here"
}

variable "subnet1" {
  default     = "subnet-12345"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "subnet2" {
  default     = "subnet-67890"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "subnet3" {
  default     = "subnet-11223344"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "log_group" {
  type    = string
  default = "log_group_name"
  description = "specify cloudwatch log group name here - this is optional"
}

variable "log_stream" {
  type    = string
  default = "log_group_stream"
  description = "specify cloudwatch log group stream name here - this is optional"
}

variable "svc_role" {
  default     = "arn:aws:iam::012345678901:role/role_name"
  description = "specify CodeBuild IAM service role here"
}

variable "security_grp" {
  default     = "sg-1a2b3c4d5e6f7g"
  description = "CodeBuild job security group, only requires outbound, can use this same one in nonprod acct"
}

variable "source_type" {
  default     = "NO_SOURCE"
  description = "Type of repository that contains the source code to be built, acceptable values: CODECOMMIT, CODEPIPELINE, GITHUB, GITHUB_ENTERPRISE, BITBUCKET, S3, NO_SOURCE"
}

variable "source_location" {
  default     = ""
  description = "location of source code"
}

variable "source_buildspec" {
  default     = "buildspec.yml"
  description = "specify the location of buildspec file"
}

variable "source_version" {
  default     = ""
  description = "Source version: branch name, version, tag etc."
}

