provider "aws" {
region     = "us-west-2"
}
module "cw_elasticsearch" {
  source = "git@github.com:doruboyina/terraform.git//cw_es"
  paths = ["/opt/apache-tomcat-9.0.5/logs/catalina.2018-03-19.log", "/aws/lambda/lamda-html"]
}

