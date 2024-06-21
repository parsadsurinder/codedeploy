#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
# Login to Amazon ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 891377322463.dkr.ecr.us-west-2.amazonaws.com
