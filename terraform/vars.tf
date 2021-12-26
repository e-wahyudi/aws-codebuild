variable "job_name" {
  default     = "<codebuild job name>"
  description = "Code Build Job name"
}

variable "job_description" {
  default     = "Test Codebuild job provisioned via Terraform"
  description = "Code Build Job description"
}

variable "vpc" {
  default     = "<vpc_ID>"
  description = "specify VPC ID here"
}

variable "subnet1" {
  default     = "<subnet_ID>"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "subnet2" {
  default     = "<subnet_ID>"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "subnet3" {
  default     = "<subnet_ID>"
  description = "Please use subnets that have NAT gateway/instance associated with"
}

variable "log_group" {
  type    = string
  default = ""
  description = "specify cloudwatch log group name here - this is optional, if blank, it will be stored in log group named: /aws/codebuild/*"
}

variable "log_stream" {
  type    = string
  default = ""
  description = "specify cloudwatch log group stream name here - this is optional, if blank, it will store logs in the log group above /aws/codebuild/<job_name>"
}

variable "svc_role" {
  default     = "<service_role_ARN>"
  description = "specify CodeBuild IAM service role here"
}

variable "security_grp" {
  default     = "sg-XXXXXXXX"
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

