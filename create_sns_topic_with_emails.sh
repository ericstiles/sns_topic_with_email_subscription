#!/usr/bin/env bash

for email in $sns_emails; do
  echo "Subscribing to ${sns_arn} with ${email}"
  aws sns subscribe --topic-arn "${sns_topic_arn}" --protocol email --notification-endpoint "${email}"
done
