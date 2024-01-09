### https://neel-soni.hashnode.dev/terraform-with-aws

Day 64 of #90DaysOfDevOps

### Task-01

* Provision an AWS EC2 instance using Terraform.
    

### Prerequisites

**AWS CLI installed**

* The AWS Command Line Interface (AWS CLI) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.
    

**AWS IAM user**

* IAM (Identity Access Management) AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.
    

In order to connect your AWS account and Terraform, you need the access keys and secret access keys exported to your machine.

**Refer**

* To create IAM user and attach policy [click here](https://neel-soni.hashnode.dev/aws-iam-create-user-add-to-group-and-attach-policies)
    
* To install and configure AWS CLI [click here](https://neel-soni.hashnode.dev/iam-programmatic-access-and-aws-cli)
    

After completion of the configuration continue on vs code with terraform.

write the below code:

```json
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "aws_ec2_test" {
  count         = 2
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  tags = {
    Name = "TerraformTestServerInstance"
  }
}
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704776824082/d962b4b4-118e-4821-8e8e-34a7fc9cfd7d.png)

Here in the terraform block, it will fetch `AWS` from it's registry with the specific version.

In the provider block, `aws` parameter is used to specify the `region`.

Next, in the resource block, as we want to create the AWS instances, the `aws_instance` parameter has been specified and `aws_ec2_test` as resource name.

In this resource block, `count` indicates the amount of instances you need to create, the `ami` to specify the image, `instance_type` to specify the instance type and `tags` to provide tag (name) to the instace.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704777847674/5f1e2979-b595-48f6-b951-a35ed03ba30b.png align="center")

You can find AMI ID from the launch instance.

After this write command: `terraform init` , followed by `terraform apply` . Then it will create instances.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704777537859/351a865c-b13f-4264-9b69-44fc9a2f7831.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704777730056/1a500a05-54ec-43c4-b9ab-798e43be9b66.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704777743018/75675252-3823-44f3-94dd-99559d7c6ecf.png)

Write "yes" when asked for a value.

Then it will start creating instances.

Verify on the AWS console.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704777799267/21308338-e787-4779-a082-e5d44271a33f.png)

---

The provision of the EC2 instance has been successfully completed.

Thank You For Reading. Have a great day 😊
