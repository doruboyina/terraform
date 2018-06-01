provider "aws" {
region     = "us-west-2"
}

module "cw_elasticsearch" {
  source = "/root/softwares/watch_elastic/cw_es/lambda"
}

