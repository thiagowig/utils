# Change project
gcloud config set project my-project

# Deploy a function
gcloud funtions deploy <FUNC_NAME> --entry-point <METHOD_NAME> --runtime nodejs6 --trigger-http

# Read function log
gcloud functions logs read <FUNC_NAME>

# Create a Pubsub topic
gcloud pubsub topics create <PUBSUB_NAME>

# Create a Pubsub subscription
gcloud pubsub subscriptions create <SUBSCRIPTION_NAME> --topic <TOPIC_NAME>

# Create a Cloud SQL instance
gcloud sql instances create poc-instance --tier=db-f1-micro --region=us-central

# Create a user um CloudSQL
gcloud sql users set-password root % --instance [INSTANCE_NAME] --password [PASSWORD]
