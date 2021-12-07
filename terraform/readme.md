###### Explanation

In this example, I'm using **NO_SOURCE** as the **source_type** which requires a buildspec file to be referenced in the terraform build. You could use a Github repository and specify the link in **source_location** in vars.tf; but it seems to require GitHub Token to authenticate CodeBuild to reach the GitHub repository. I believe this concerned was already raised with GitHub & Hashicorp; but it is still being worked on. I believe there are work arounds; you're welcome to explore in [this article](https://github.com/hashicorp/terraform-provider-aws/issues/2796) that I found.

For the sake of this example, you could set the source_type as NO_SOURCE and specify a local buildspec file.  Once the CodeBuild project is created, you could manually set the GitHub Access Token in the CodeBuild project itself and specify the path to the buildspec file in the buildspec section.


[Further reference on terraform for aws_codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project)

