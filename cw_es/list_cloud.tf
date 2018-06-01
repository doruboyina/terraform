resource "aws_cloudwatch_log_subscription_filter" "test_lambdafunction_logfilter" {
  count = "${length(var.paths)}"
  name = "test_lambdafunction_logfilter"
  log_group_name = "${var.paths[count.index]}"
  filter_pattern  = "MARS"
  destination_arn = "arn:aws:lambda:us-west-2:698939424984:function:LogsToElasticsearch_testman"
  distribution    = "Random"
}
