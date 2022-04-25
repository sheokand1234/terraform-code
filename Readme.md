What will students learn in your course?
You will learn to master Terraform in a practical perspective with 40+ demo's
You will learn each and every concept of Terraform (basic to advanced)
You will learn to write and understand Terraform Resource Behavior in combination with all the Meta-Arguments
You will learn each and every way (10 types) you can implement the Terraform Input Variables
You will learn in detail about Terrafrom State, Remote Backends, Terraform Cloud Backends and many Terraform State commands
You will learn and implement Terraform CLI based workspaces
You will learn and implement all Terraform Provisioners
You will learn and implement Terraform Modules with all 3 types (Public Modules, Local Modules )
You will learn and implement two important usecases on Terraform Cloud (VCS-Driven and CLI-Driven Workflows)
You will learn about sentinel policies and implement 2 types of sentinel policies
You will learn and implement Terraform Dynamic Expressions, Dynamic Blocks and Terraform Functions
You will also learn and implement Terraform Datasources concept
####################
Are there any course requirements or prerequisites?
You must have an AWS Cloud account to follow with me for hands-on activities.
You don't need to have any basic knowledge of Terraform. Course will get started from very very basics of Terraform and take you to very advanced levels
#######################
Who are your target students?
Infrastructure Architects or Sysadmins or Developers who are planning to master Terraform
Any beginner who is interested in learning IaC Infrastructure as Code current trending tool Terraform
Anyone who want to learn Terraform from a practical perspective
###################
Infrastructure as Code Basics
Step-01: Understand Problems with Traditional way of Managing Infrastructure
Time it takes for building multiple environments
Issues we face with different environments
Scale-Up and Scale-Down On-Demand
Step-02: Discuss how IaC with Terraform Solves them
Visibility
Stability
Scalability
Security
Audit


terraform version.tf
step-1
terrafomr excutable
step2
teraform provider
terraform main.tf
terraform varible.tf
terraform outputs.tf
modules-

Infrastructure as code (IaC) tools allow you to manage infrastructure with configuration files 
rather than through a graphical user interface. IaC allows you to build, change, and manage your infrastructure in a safe, consistent, and repeatable way by defining resource configurations that you can version, reuse, and share.

Terraform is HashiCorp's infrastructure as code tool. It lets you define resources and infrastructure 
in human-readable, declarative configuration files, and manages your infrastructure's lifecycle. 
Using Terraform has several advantages over manually managing your infrastructure:

Terraform can manage infrastructure on multiple cloud platforms.
The human-readable configuration language helps you write infrastructure code quickly.
Terraform's state allows you to track resource changes throughout your deployments.
You can commit your configurations to version control to safely collaborate on infrastructure.


# Terraform & AWS CLI Installation

## Step-01: Introduction
- Install Terraform CLI
- Install AWS CLI
- Install VS Code Editor
- Install HashiCorp Terraform plugin for VS Code


## Step-02: MACOS: Terraform Install
- [Download Terraform MAC](https://www.terraform.io/downloads.html)
- [Install CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Unzip the package
```
# Copy binary zip file to a folder
mkdir /Users/<YOUR-USER>/Documents/terraform-install
COPY Package to "terraform-install" folder

# Unzip
unzip <PACKAGE-NAME>
unzip terraform_0.14.3_darwin_amd64.zip

# Copy terraform binary to /usr/local/bin
echo $PATH
mv terraform /usr/local/bin

# Verify Version
terraform version

# To Uninstall Terraform (NOT REQUIRED)
rm -rf /usr/local/bin/terraform
``` 

## Step-03: MACOS: IDE for Terraform - VS Code Editor
- [Microsoft Visual Studio Code Editor](https://code.visualstudio.com/download)
- [Hashicorp Terraform Plugin for VS Code](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)


### Step-04: MACOS: Install AWS CLI
- [AWS CLI Install](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- [Install AWS CLI - MAC](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd)

```
# Install AWS CLI V2
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
which aws
aws --version

# Uninstall AWS CLI V2 (NOT REQUIRED)
which aws
ls -l /usr/local/bin/aws
sudo rm /usr/local/bin/aws
sudo rm /usr/local/bin/aws_completer
sudo rm -rf /usr/local/aws-cli
```


## Step-05: MACOS: Configure AWS Credentials 
- **Pre-requisite:** Should have AWS Account.
  - [Create an AWS Account](https://portal.aws.amazon.com/billing/signup?nc2=h_ct&src=header_signup&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start)
- Generate Security Credentials using AWS Management Console
  - Go to Services -> IAM -> Users -> "Your-Admin-User" -> Security Credentials -> Create Access Key
- Configure AWS credentials using SSH Terminal on your local desktop
```
# Configure AWS Credentials in command line
$ aws configure
AWS Access Key ID [None]: AKIASUF7DEFKSIAWMZ7K
AWS Secret Access Key [None]: WL9G9Tl8lGm7w9t7B3NEDny1+w3N/K5F3HWtdFH/
Default region name [None]: us-east-1
Default output format [None]: json

# Verify if we are able list S3 buckets
aws s3 ls
```
- Verify the AWS Credentials Profile
```
cat $HOME/.aws/credentials 
```

## Step-06: WindowsOS: Terraform & AWS CLI Install
- [Download Terraform](https://www.terraform.io/downloads.html)
- [Install CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Unzip the package
- Create new folder `terraform-bins`
- Copy the `terraform.exe` to a `terraform-bins`
- Set PATH in windows 
- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)

## Step-07: LinuxOS: Terraform & AWS CLI Install
- [Download Terraform](https://www.terraform.io/downloads.html)
- [Linux OS - Terraform Install](https://learn.hashicorp.com/tutorials/terraform/install-cli)