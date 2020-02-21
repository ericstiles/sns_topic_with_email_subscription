#!/usr/bin/env bash
#Expect two arguments

echo $sns_emails
echo $sns_arn

for email in $sns_emails; do
  echo $email
  aws sns subscribe --topic-arn "$sns_arn" --protocol email --notification-endpoint "$email"
done