# LOGIN
gcloud auth login
gcloud auth revoke

# Change project
gcloud config set project my-project


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

# Connect to database
mysql --host 127.0.0.1 --user=<USER_NAME> --password=<USER_PASSWORD>

# Create database
CREATE DATABASE <DATABASE_NAME>;

# REDIS

## Create instance
gcloud redis instances create myinstance --size=2 --region=us-central1 --redis-version=redis_4_0

## Details
gcloud redis instances describe myinstance --region=us-central1

