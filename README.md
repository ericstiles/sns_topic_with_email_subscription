# Why

Terraform (0.12.18) doesn't currently support [SNS to email](https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html)

This solution uses shell scripts to call AWS cli to create the SNS topic with a list
of email subscriptions.

On destroy this topic is destroyed using shell to call AWS.

The topic arn is available as the module output.

# Example
```
module "sns" {
  source = "./sns_topic_to_emails"
  topic_name = "email_topic"
  emails = ["example@test.com", "example2@test.com"]
}
```

# Gotchas

AWS cli must be installed with available keys having the permissions necessary.

# Reminder

Email subscriptions must be approved before they receiving messages.
