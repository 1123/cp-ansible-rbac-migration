for vm in benedikt-kafka1 benedikt-kafka2 benedikt-kafka3 benedikt-kafka4 benedikt-kafka5 benedikt-kafka6; do
  gcloud compute instances create $vm \
    --project=solutionsarchitect-01 \
    --zone=us-central1-a \
    --machine-type=e2-medium \
    --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
    --maintenance-policy=MIGRATE \
    --provisioning-model=STANDARD \
    --create-disk=auto-delete=yes,boot=yes,device-name=instance-20240507-123522,image=projects/rhel-cloud/global/images/rhel-9-v20240415,mode=rw,size=100,type=projects/solutionsarchitect-01/zones/us-central1-a/diskTypes/pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any	
done
