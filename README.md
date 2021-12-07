## aws-codebuild
#### Execute SQL script within CodeBuild job

##### Synopsis
This is a sample of simple AWS CodeBuild job that connects to a PostgreSQL DB and execute SQL script to update its DB Schema. This sample does not include the SQL script.  This includes the terraform script of building out the CodeBuild infrastructure as well.

##### Requirements/Pre-requisites
- Ensure that you have at least 1 private subnet attached to NAT gateway/instance to allow CodeBuild to access the internet to download any dependencies. This would also allow CodeBuld to communicate with the AWS Services that will be used in this sample. For reference on setting up VPC with private subnet along with NAT Gateway, please see [this article](https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-network-internet-NAT-gateway.html).
- An S3 Bucket (does **NOT** require public access) - for this sample, we'll be working in **us-east-1** region
- Secret Manager to store/encrpyt the Database username and password
- CloudWatch Log Group(optional) - required only if you'd like the Build History logged for reference
- Ensure that the RDS DB instance has security group that allows inbound traffic from the CIDR block(s) that the CodeBuild is set. This is necesary if the RDS cluster is not deployed in any of those CIDRs.
- IAM role that can be used by the CodeBuild job to interact with Secret Manager(read access), your S3 bucket(read access) and CloudWatch Log Group(read/write access). 
- IAM User with Access/Secret Key for you to run your terraform script locally from your computer. The IAM user should have permissions to create CodeBuild job and also to be able to attach IAM role.
- You could also leverage a SAML-Federated IAM role where you can obtain Access/Secret/SessionToken to run the Terraform script. There are other ways to obtain programmatic access into AWS; besides the above mentioned.
