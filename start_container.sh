#!/bin/bash
docker pull 891377322463.dkr.ecr.us-west-2.amazonaws.com/demorepo01:latest
docker stop web01 || true
docker rm web01 || true
docker run -itd --name web01 -p 80:80 891377322463.dkr.ecr.us-west-2.amazonaws.com/demorepo01:latest
