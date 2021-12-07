
resource "aws_codebuild_project" "job_name" {
  name           = var.job_name
  description    = var.job_description
  build_timeout  = "5"  #can be adjusted as needed (in minutes) - min: 5, max: 480 (8 hrs)
  queued_timeout = "5"  #can be adjusted as needed (in minutes) - min: 5, max: 480 (8 hrs)
  service_role   = var.svc_role

  artifacts {
    type = "NO_ARTIFACTS"
  }

  cache {
    type = "NO_CACHE"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

  }

  logs_config {
    cloudwatch_logs {
      group_name  = var.log_group
      stream_name = var.log_stream
    }
  }

  source {
    type            = var.source_type
    location        = var.source_location
    buildspec       = file(var.source_buildspec)
    git_clone_depth = 1

    git_submodules_config {
      fetch_submodules = false
    }
  }

  source_version = var.source_version

  vpc_config {
    vpc_id = var.vpc

    subnets = [
      var.subnet1,
      var.subnet2,
      var.subnet3
    ]

    security_group_ids = [
      var.security_grp
    ]
  }

  tags = {
    owner = ""
  }
}