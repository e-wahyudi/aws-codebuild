###### Explanation

In this example, I'm using **NO_SOURCE** as the **source_type** which requires a buildspec file to be referenced in the terraform build. You could use a Github repository and specify the link in **source_location** in vars.tf; but it seems to require GitHub Token to authenticate CodeBuild to reach the GitHub repository. 


[Further reference on terraform for aws_codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project)

