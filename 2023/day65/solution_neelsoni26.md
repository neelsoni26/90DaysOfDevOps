#### https://neel-soni.hashnode.dev/working-with-terraform-resources

Day 65 of #90daysofdevops

**Tasks:**

**Understanding Terraform Resources**

A resource in Terraform represents a component of your infrastructure, such as a physical server, a virtual machine, a DNS record, or an S3 bucket. Resources have attributes that define their properties and behaviors, such as the size and location of a virtual machine or the domain name of a DNS record.

When you define a resource in Terraform, you specify the type of resource, a unique name for the resource, and the attributes that define the resource. Terraform uses the resource block to define resources in your Terraform configuration.

### Task 1: Create a security group.

### Task 2: Create an EC2 instance with server installed.

### Task 3: Access your website.

**Prerequisites:**

* Create IAM user and attach policy [**click here**](https://neel-soni.hashnode.dev/aws-iam-create-user-add-to-group-and-attach-policies)
    
* Install and configure AWS CLI [**click here**](https://neel-soni.hashnode.dev/iam-programmatic-access-and-aws-cli)
    

**Task 1:**

To create a security group, write the below code:

```json
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "web_server" {
  name_prefix = "web-server-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

Run `terraform init` and then `terraform apply` to create a security group.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1704806583403/456fdc36-5e42-4c76-8c47-0883dee8e19c.png)

**Task 2:**

To create ec2 instance with server installed, add below code in the existing main.tf file.

```json
resource "aws_instance" "web_server" {
  ami             = "ami-0c7217cdde317cfec"
  instance_type   = "t2.micro"
  key_name        = "my-linux-key"
  security_groups = [aws_security_group.web_server.name]
  user_data       = <<-EOF
              #!/bin/bash
              echo "<html><body><h1>Welcome to my website!</h1></body></html>" > index.html
              nohup python3 -m http.server 80 &
  EOF
}
```

You need to change key\_name and ami as per your requirements.

Run `terraform apply` to create an instance.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1705052721199/b9fa9d63-fbab-4b9c-8160-2bd506ab1535.png)

**Task 3:**

Access your website.

Copy the public ip address of your instace and paste it in any browser. You may need to wait till status check pass successfully.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1705052734736/95362688-0314-4885-a34c-a2b1cb51c309.png)

---

Thank you for reading!
