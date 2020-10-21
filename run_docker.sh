#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag udacity-prediction-app .   
# Step 2: 
# List docker images
docker images 
# Step 3: 
# Run flask app
docker run -p 8000:80 --rm --name udacity-prediction-app   udacity-prediction-app