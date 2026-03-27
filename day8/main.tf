provider "aws" {  

	region = var.region
}


module "sns" {
  source  = "terraform-aws-modules/sns/aws"
  version = "5.0.0"
  name  = "send-email-terraform"
  subscriptions = {
    email = {
      protocol = "email"
      endpoint = var.email
    }
  }

}

module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "6.0.0"
  function_name = "send-email"
  handler = "index.handler"
  runtime = "python3.9"

  source_path =  "${path.module}/lambda"

  environment_variables = {
    SNS_ARN = module.sns.topic_arn
  }
  attach_policies = true
  number_of_policies = 1
  
  policies = [
    "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
  ]
     


  }

  output "lambda_name" {
    value = module.lambda.lambda_function_name

  
}
