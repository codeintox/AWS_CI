#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull mydevdocker2/simply-app

# Run the Docker image as a container
docker run -d -p 5000:5000 AWS_CI 
