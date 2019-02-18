#--------------------------------------------------------------
# Provider Variables
#--------------------------------------------------------------
provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "/Users/matthew.yates/.aws/credentials"
}
