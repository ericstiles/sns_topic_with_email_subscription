resource "aws_sns_topic" "tf_aws_sns_topic_with_subscription" {
  name = var.sns_topic_name
  provisioner "local-exec" {
    command = "sh ${path.module}/create_sns_topic_with_emails.sh"
    environment = {
      sns_topic_arn = self.arn
      sns_emails = join(" ", var.emails)
    }
  }

  provisioner "local-exec" {
    when    = destroy
    command = "sh ${path.module}/destroy_sns_topic_with_emails.sh"
    environment = {
      sns_topic_arn = self.arn
    }
  }
}
