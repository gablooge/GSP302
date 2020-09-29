#!/bin/bash
gcloud auth revoke --all

while [[ -z "$(gcloud config get-value core/account)" ]]; 
do echo "waiting login" && sleep 2; 
done

while [[ -z "$(gcloud config get-value project)" ]]; 
do echo "waiting project" && sleep 2; 
done

# mkdir deployment_manager
cd deployment_manager
# gsutil cp gs://spls/gsp302/* .

gcloud deployment-manager deployments create vm-test --config=qwiklabs.yaml




