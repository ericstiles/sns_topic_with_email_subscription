#!/usr/bin/env bash

echo "Deleting sns topic ${topic_arn}"
aws sns delete-topic --topic-arn $topic_arn
