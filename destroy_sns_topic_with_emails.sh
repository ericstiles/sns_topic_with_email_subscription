#!/usr/bin/env bash

echo "Deleting sns topic ${sns_topic_arn}"
aws sns delete-topic --topic-arn ${sns_topic_arn}
