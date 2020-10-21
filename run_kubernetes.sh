#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mkallali/udacity-prediction-app:1.0
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run pred-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get po
# Step 4:
# Forward the container port to a host
sleep 3 && kubectl port-forward pod/pred-app  8000:80
