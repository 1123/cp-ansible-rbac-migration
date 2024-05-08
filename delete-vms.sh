for vm in benedikt-kafka1 benedikt-kafka2 benedikt-kafka3 benedikt-kafka4 benedikt-kafka5 benedikt-kafka6; do
  gcloud compute instances delete $vm \
    --project=$GCP_PROJECT \
    --zone=us-central1-a \
    --quiet
done
