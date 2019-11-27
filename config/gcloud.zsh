export GCLOUD_PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin

if [ -d "$GCLOUD_PATH" ]; then
  export PATH=$PATH:$GCLOUD_PATH
else
  unset GCLOUD_PATH
fi
