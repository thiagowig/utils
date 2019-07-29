# Change project
gcloud config set project my-project

# Deploy a function
gcloud funtions deploy <FUNC_NAME> --entry-point <METHOD_NAME> --runtime nodejs6 --trigger-http

# Create a Pubsub
gcloud pubsub topics create <PUBSUB_NAME>
