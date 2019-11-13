# LOGIN
gcloud auth login
gcloud auth revoke

# Change project
gcloud config set project my-project


# APP ENGINE

# Deploy
gcloud app deploy --project <PROJECT_ID> --version <VERSION_NAME> --no-promote


# FUNCTIONS

# Deploy a function
gcloud funtions deploy <FUNC_NAME> --entry-point <METHOD_NAME> --runtime nodejs6 --trigger-http

# Read function log
gcloud functions logs read <FUNC_NAME>


# PUBSUB

# Create a Pubsub topic
gcloud pubsub topics create <PUBSUB_NAME>

# Create a Pubsub subscription
gcloud pubsub subscriptions create <SUBSCRIPTION_NAME> --topic <TOPIC_NAME>


#CLOUD SQL

# List all instances
gcloud sql instances list

# Describe a single instance
gcloud sql instances describe sandbox-cloudsql-instance

# Get connectionName
gcloud sql instances describe sandbox-cloudsql-instance | grep connectionName | awk '{print $2}'

# Create a Cloud SQL instance
gcloud sql instances create poc-instance --tier=db-f1-micro --region=us-central

# Create a user um CloudSQL
gcloud sql users set-password root --host=% --instance [INSTANCE_NAME] --password [PASSWORD]

# Open Connection
./cloud_sql_proxy -instances="<CONNECTION_NAME>"=tcp:3306

mysql --host 127.0.0.1 --user=<USER_NAME> --password=<USER_PASSWORD>
CREATE DATABASE <DATABASE_NAME>;
CREATE USER '<USER_NAME>'@'localhost' IDENTIFIED BY '<USER_PASS>';
GRANT ALL PRIVILEGES ON <DATABASE_NAME> TO '<USER_NAME>'@'localhost';

# REDIS

## Create instance
gcloud redis instances create myinstance --size=2 --region=us-central1 --redis-version=redis_4_0

## Details
gcloud redis instances describe myinstance --region=us-central1



# Enable APIS
gcloud services list --available | grep pubsub

gcloud services enable pubsub.googleapis.com


# Deployment Manager
gcloud deployment-manager types list

gcloud deployment-manager deployments create test-deployment --config provisioning.yaml

gcloud deployment-manager deployments delete test-deployment


# Storage
gsutil mb -l us-central1 gs://sandbox-dev-bucket-management/

gsutil cp .env gs://sandbox-dev-bucket-management/

gsutil ls -l gs://sandbox-dev-bucket-management/
