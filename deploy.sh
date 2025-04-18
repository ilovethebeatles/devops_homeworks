#!/bin/bash
set -e

kubectl apply -f kubernetes/configmap.yaml
kubectl apply -f kubernetes/pod.yaml
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
kubectl apply -f kubernetes/daemonset.yaml
kubectl apply -f kubernetes/statefulset-service.yaml
kubectl apply -f kubernetes/statefulset.yaml
kubectl apply -f kubernetes/cronjob.yaml

echo "Waiting for deployment rollout..."
kubectl rollout status deployment/custom-app
echo "All resources created."
