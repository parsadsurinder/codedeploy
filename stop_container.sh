#!/bin/bash
docker stop web01 || true
docker rm web01 || true
