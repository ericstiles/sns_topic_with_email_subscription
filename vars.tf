variable "emails" {
  description = "list of emails that will subscribe to SNS topic"
  type = list(string)
}

variable "sns_topic_name" {
  type = string
}

