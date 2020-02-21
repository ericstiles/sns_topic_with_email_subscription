# Why

Terraform (0.12.18) doesn't currently support [SNS to email](https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html)

This solution uses shell scripts to call AWS cli to create the SNS topic with a list
of email subscriptions.

On destroy this topic is destroyed using shell to call AWS.

The topic arn is available as the module output

# Gotchas

AWS cli must be installed with available keys having the permissions necessary
