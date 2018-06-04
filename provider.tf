provider "aws" {
region     = "us-west-2"
}

module "cw_elasticsearch" {
  source = "git@github.com:doruboyina/terraform.git//cw_es"
}

